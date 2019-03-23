require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @results = PigLatinizer.new(params[:user_phrase])
    erb :results
  end

  post '/piglatinize again' do
    @results = PigLatinizer.new(params[:user_phrase])
    erb :results
  end
end
