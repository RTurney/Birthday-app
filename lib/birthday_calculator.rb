# frozen_string_literal: true

#Birthday calculator class
class Birthday_calculator
  def initialize
    @today = Time.new.strftime('%d/%m').split('/').join.to_i
  end

  def calculate_days(birthday)
    bday = birthday.split('/').join.to_i

    return 0 if is_today?(bday)
  end

  def is_today?(birthday)
    birthday == @today
  end
end
