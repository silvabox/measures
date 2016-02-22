class Measure
  def initialize(quantity = 1)
    @quantity = quantity
  end

  def self.converts_to?(unit)
    self.class == unit
  end

  def converts_to?(unit)
    return true if self.class == unit
    self.class.converts_to?(unit)
  end

  def as(unit)
    return self if self.class == unit
    fail 'invalid conversion' unless converts_to?(unit)
    unit.new(quantity * conversion(unit))
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
end
