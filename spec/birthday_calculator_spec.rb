require 'birthday_calculator'

describe 'birthday calculator' do

  it 'returns an integer' do
    expect(birthday_calculator(0)).to eq 0
  end
end
