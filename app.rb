# frozen_string_literal: true

require 'sinatra'
require_relative './lib/birthday_calculator'
# Main app class. Inherits from Sinatra base.
class Birthday < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @bday_calculator = BirthdayCalculator.new
    @name = params[:name]
    @day = params[:day].to_s
    monthYear = params[:month]
    @month = monthYear.split('-')[1].to_s

    if @bday_calculator.calculate_days(@day, @month) == 0
      erb(:birthday)
    else
      erb(:days_left)
    end
  end
end
