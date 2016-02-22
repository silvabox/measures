require_relative 'measure'

class Tablespoon < Measure
  TEASPOONS = 3

  def self.converts_to?(unit)
    super || unit == Teaspoon || Teaspoon.converts_to?(unit)
  end


  protected

  def conversion(unit)
    if unit == Teaspoon
      TEASPOONS
    else
      Teaspoon.conversion(unit)
    end
  end
end
