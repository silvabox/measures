require 'pint'

describe Pint do
  subject(:pint) { Pint.new }

  it 'converts to cups' do
    expect(pint.converts_to?(Cup)).to be_truthy
  end

  describe 'one pint' do
    it 'equals one pint' do
      expect(pint).to eq Pint.new
    end

    it 'equals two cups' do
      expect(pint).to eq Cup.new(2)
    end
  end
end
