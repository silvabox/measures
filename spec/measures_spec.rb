require 'quart'

describe 'measures' do
  specify '1 tablespoon equals 3 teaspoons' do
    expect(1.tablespoon).to eq 3.teaspoons
  end

  specify '1 ounce equals 2 tablespoons' do
    expect(1.ounce).to eq 2.tablespoons
  end

  specify '1 cup equals 8 ounces' do
    expect(1.cup).to eq 8.ounces
  end

  specify '1 pint equals 2 cups' do
    expect(1.pint).to eq 2.cups
  end

  specify '1 quart equals 2 pints' do
    expect(1.quart).to eq 2.pints
  end

  specify '3 pints equals 96 tablespoons' do
    expect(3.pints).to eq 96.tablespoons
  end

  specify '1 teaspoon equals 8 pinches' do
    expect(1.teaspoon).to eq 8.pinches
  end
end
