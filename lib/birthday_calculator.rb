# frozen_string_literal: true

class Birthday_calculator

  def initialize
    @today = Time.new.strftime("%d/%m").split('/').join().to_i
  end

  def calculate_days(birthday)
    bday = birthday.split('/').join().to_i

    if bday == @today
      return 0
    end
  end


end
