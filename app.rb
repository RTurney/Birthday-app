require 'sinatra'

class Birthday < Sinatra::Base
  get '/' do
    'Page works!'
  end
end
