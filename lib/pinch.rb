require_relative 'measure'
require_relative 'teaspoon'

class Pinch < Measure
  class << self
    protected

    def plural_name
      'pinches'
    end
  end
end

class Teaspoon
  converts_to 8, Pinch
end
