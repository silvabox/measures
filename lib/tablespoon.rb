require_relative 'measure'
require_relative 'teaspoon'

class Tablespoon < Measure
  TEASPOONS = 3
  converts_to TEASPOONS, Teaspoon
end
