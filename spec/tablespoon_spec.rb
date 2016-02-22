require 'tablespoon'
require 'teaspoon'

describe Tablespoon do
  subject(:tablespoon) { Tablespoon.new }

  it 'converts to teaspoons' do
    expect(tablespoon.converts_to?(Teaspoon)).to be_truthy
  end

  context 'one tablespoon' do
    it 'equals one tablespoon' do
      expect(tablespoon).to eq Tablespoon.new
    end

    it 'equals three teaspoons' do
      expect(tablespoon).to eq Teaspoon.new(3)
    end

    describe 'as teaspoons' do
      it 'is three' do
        expect(tablespoon.as(Teaspoon)).to eq Teaspoon.new(3)
      end
    end
  end

  context 'three teaspoons' do
    it 'equals one tablespoon' do
      expect(Teaspoon.new(3)).to eq tablespoon
    end
  end

  context 'five tablespoons' do
    subject(:tablespoons) { Tablespoon.new(5) }

    it 'equals 5 tablespoons' do
      expect(tablespoons).to eq Tablespoon.new(5)
    end

    it 'equals 15 teaspoons' do
      expect(tablespoons).to eq Teaspoon.new(15)
    end
    
    describe 'as teaspoons' do
      it 'is 15' do
        expect(tablespoons.as(Teaspoon)).to eq Teaspoon.new(15)
      end
    end
  end
end
