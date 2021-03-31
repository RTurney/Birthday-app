require 'sinatra'

class Birthday < Sinatra::Base
  get '/' do
    'Hello There!'
  end
end
