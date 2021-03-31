# frozen_string_literal: true

require 'sinatra'

# Main app class. Inherits from Sinatra base.
class Birthday < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    p params.inspect
    erb(:birthday)
  end
end
