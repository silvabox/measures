require_relative 'measure'
require_relative 'ounce'

class Cup < Measure
  #OUNCES = 8
  #converts_to OUNCES, Ounce
  #improve readability without constant?
  converts_to 8, Ounce
end
