# frozen_string_literal: true

# Birthday calculator class
class BirthdayCalculator
  def initialize
    @today = Date.today
  end

  def calculate_days(day, month)
    birthday = birthday_converter(day, month)

    return 0 if today?(birthday)

    birthday = add_year(day, month) if Date.today >= birthday

    (birthday - @today).to_i
  end

  private #----------------------------

  def today?(birthday)
    birthday == @today
  end

  def birthday_converter(day, month)
    Date.new(Date.today.year, month.to_i, day.to_i)
  end

  def add_year(day, month)
    Date.new((Date.today.year + 1), month.to_i, day.to_i)
  end
end
