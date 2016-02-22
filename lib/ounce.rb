require_relative 'measure'
require_relative 'tablespoon'

class Ounce < Measure
  TABLESPOONS = 2
  converts_to TABLESPOONS, Tablespoon
end
