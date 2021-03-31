# frozen_string_literal: true

require 'birthday_calculator'

describe Birthday_calculator do
  it 'will return 0 if birthday is today' do
    expect(subject.calculate_days('31', '03')).to eq 0
  end

  it "will return 1 if birthday is tomorrow" do
    expect(subject.calculate_days('01', '04')).to eq 1
  end

  it "will return 364 if birthday was yesterday" do
    expect(subject.calculate_days('30', '03')).to eq 364
  end
end
