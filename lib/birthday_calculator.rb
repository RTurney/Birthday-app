# frozen_string_literal: true

#Birthday calculator class
class Birthday_calculator
  def initialize
    @today = Date.today
  end

  def calculate_days(day, month)
    birthday = birthday_converter(day, month)

    return 0 if is_today?(birthday)

     if Date.today >= birthday
       birthday = Date.new((Date.today.year + 1), month.to_i, day.to_i)
     end
    return (birthday - @today).to_i
  end


  private #----------------------------
  def is_today?(birthday)
    birthday == @today
  end

  def birthday_converter(day, month)
    Date.new(Date.today.year, month.to_i, day.to_i)
  end
end
