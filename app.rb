require_relative 'config/environment'

class App < Sinatra::Base

get '/' do

erb :user_input

end

post '/piglatinize' do
    piglatin = PigLatinizer.new
     @answer = piglatin.piglatinize(params[:user_phrase])
    erb :answer
end

end