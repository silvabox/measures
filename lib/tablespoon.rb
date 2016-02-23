require_relative 'measure'
require_relative 'teaspoon'

class Tablespoon < Measure
  #TEASPOONS = 3
  #converts_to TEASPOONS, Teaspoon
  #improve readability without constant?
  converts_to 3, Teaspoon
end
