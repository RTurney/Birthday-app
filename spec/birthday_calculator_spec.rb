# frozen_string_literal: true

require 'birthday_calculator'

describe 'birthday calculator' do

  it "will return 0 if birthday is today" do
    expect(birthday_calculator("31/03")).to eq 0
  end
end
