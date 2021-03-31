# frozen_string_literal: true

require 'birthday_calculator'

describe Birthday_calculator do

  it "will return 0 if birthday is today" do
    expect(subject.calculate_days("31/03")).to eq 0
  end
end
