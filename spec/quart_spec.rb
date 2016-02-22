require 'quart'

describe Quart do
  subject(:quart) { Quart.new }

  it 'converts to pints' do
    expect(quart.converts_to?(Pint)).to be_truthy
  end
end
