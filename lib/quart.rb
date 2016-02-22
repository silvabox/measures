require_relative 'pint'

class Quart < Measure
  PINTS = 2
  converts_to PINTS, Pint
end
