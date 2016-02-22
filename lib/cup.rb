require_relative 'measure'
require_relative 'ounce'

class Cup < Measure
  OUNCES = 8
  converts_to OUNCES, Ounce
end
