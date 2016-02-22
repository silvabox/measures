require_relative 'measure'
require_relative 'tablespoon'

class Ounce < Measure
  TABLESPOONS = 2

  def self.converts_to
    @converts_to ||= [Tablespoon]
  end

  private

  def self.conversion(unit)
    if unit == Tablespoon
      TABLESPOONS
    else
      TABLESPOONS * Tablespoon.conversion(unit)
    end
  end
end
