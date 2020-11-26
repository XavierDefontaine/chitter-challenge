require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base
  

  run! if app_file == $0


end