require_relative 'measure'

class Teaspoon < Measure
  def self.converts_to?(unit)
    super || false
  end
end
