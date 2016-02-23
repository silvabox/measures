require 'pinch'

describe Pinch do
  it 'converts from teaspoon' do
    expect(Teaspoon.new).to eq Pinch.new(8)
  end
end
