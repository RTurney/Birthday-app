# frozen_string_literal: true

#Birthday calculator class
class Birthday_calculator
  def initialize
    @today = Date.today
  end

  def calculate_days(day, month)
    birthday = Date.new(Date.today.year, month.to_i, day.to_i)

    return 0 if is_today?(birthday)

    return (birthday - @today).to_i
  end

  def is_today?(birthday)
    birthday == @today
  end
end
