require 'ounce'

describe Ounce do
  subject(:ounce) { Ounce.new }

  it 'coverts to tablespoons' do
    expect(ounce.converts_to?(Tablespoon)).to be_truthy
  end

  it 'coverts to teaspoons' do
    expect(ounce.converts_to?(Teaspoon)).to be_truthy
  end

  describe 'one ounce' do
    it 'equals one ounce' do
      expect(ounce).to eq Ounce.new
    end

    it 'equals 2 tablespoons' do
      expect(ounce).to eq Tablespoon.new(2)
    end

    it 'equals 6 teaspoons' do
      expect(ounce).to eq Teaspoon.new(6)
    end
  end

  describe 'three ounces' do
    subject(:ounces) { Ounce.new(3) }

    it 'equals three ounces' do
      expect(ounces).to eq Ounce.new(3)
    end

    it 'equals six tablespoons' do
      expect(ounces).to eq Tablespoon.new(6)
    end

    it 'equals nine teaspoons' do
      expect(ounces).to eq Teaspoon.new(18)
    end
  end
end
