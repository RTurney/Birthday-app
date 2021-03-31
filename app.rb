require 'sinatra'

class Birthday < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    'Happy Birthday Markus'
  end
end
