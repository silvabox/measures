class Measure
  class << self
    def converts_to?(unit)
      self == unit || conversion(unit)
    end

    def inherited(subclass)
      name = subclass.name.downcase
      Fixnum.send :define_method, name do
        subclass.new(self)
      end
      Fixnum.send :alias_method, name +'s', name
    end

    protected

    def converts_to(quantity, unit)
      conversions[unit] = quantity
    end

    def factor(unit)
      conversion(unit) do |u, quantity|
        unit == u ? quantity : quantity * u.factor(unit)
      end
    end

    private

    def conversions
      @conversions ||= {}
    end

    def conversion(unit)
      conversion = conversions.find do |u, quantity|
        unit == u || u.converts_to?(unit)
      end
      if block_given?
        yield conversion[0], conversion[1] if conversion
      else
        conversion
      end
    end
  end

  def initialize(quantity = 1)
    @quantity = quantity
  end

  def converts_to?(unit)
    self.class.converts_to?(unit)
  end

  def as(unit)
    return self if self.class == unit
    fail 'invalid conversion' unless converts_to?(unit)
    unit.new(quantity * factor(unit))
  end

  def ==(other)
    if converts_to?(other.class)
      other.quantity == as(other.class).quantity
    elsif other.converts_to?(self.class)
      other.as(self.class).quantity == quantity
    else
      false
    end
  end

  protected

  attr_reader :quantity

  def factor(unit)
    self.class.send(:factor, unit)
  end
end
