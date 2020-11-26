require 'sinatra/base'
require './lib/database_connection'
require './lib/database_connection_setup'
require './lib/peep'

class Chitter < Sinatra::Base
  

  run! if app_file == $0

  get '/' do
    @peeps = Peep.all
    erb :index 
  end

  post '/add' do
    Peep.add(text: params[:text])
    redirect '/'
  end

end