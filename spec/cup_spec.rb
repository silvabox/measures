require 'cup'

describe Cup do
  subject(:cup) { Cup.new }

  it 'coverts to ounces' do
    expect(cup.converts_to?(Ounce)).to be_truthy
  end

  it 'coverts to tablespoons' do
    expect(cup.converts_to?(Tablespoon)).to be_truthy
  end

  describe 'one cup' do
    it 'equals one cup' do
      expect(cup).to eq Cup.new
    end

    it 'equals 8 ounces' do
      expect(cup).to eq Ounce.new(8)
    end

    it 'equals 16 tablespoons' do
      expect(cup).to eq Tablespoon.new(16)
    end
  end

  describe 'three cups' do
    subject(:cups) { Cup.new(3) }

    it 'equals three cups' do
      expect(cups).to eq Cup.new(3)
    end

    it 'equals 24 ounces' do
      expect(cups).to eq Ounce.new(24)
    end

    it 'equals 48 tablespoons' do
      expect(cups).to eq Tablespoon.new(48)
    end
  end
end
