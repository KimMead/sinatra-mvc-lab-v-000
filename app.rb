require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
      erb :user_input
    end

    post '/piglatinize' do
      lang = PigLatinizer.new
      @piglatinized = lang.to_pig_latin(params[:user_phrase])
    end
end

  post '/piglatinize again' do
    @results = PigLatinizer.new(params[:user_phrase])
    erb :results
  end
end
