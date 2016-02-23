require_relative 'pint'

class Quart < Measure
  #PINTS = 2
  #converts_to PINTS, Pint
  #improve readability without constant?
  converts_to 2, Pint
end
