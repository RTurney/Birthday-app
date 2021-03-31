# frozen_string_literal: true

def birthday_calculator(birthday)
  bday = birthday.split('/').join().to_i
  today = Time.new.strftime("%d/%m").split('/').join().to_i
  if bday == today
    return 0
  end
  
end
