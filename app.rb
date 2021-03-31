require 'sinatra'

class Birthday < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    erb(:birthday)
  end
end
