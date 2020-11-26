require 'sinatra/base'
require './lib/database_connection'
require './lib/database_connection_setup'
require ''

class Chitter < Sinatra::Base
  

  run! if app_file == $0

  get '/' do
    erb :index 
  end

  post '/add' do
    Peep.add(params[:text])
  end

end