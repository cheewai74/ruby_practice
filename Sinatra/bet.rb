require 'sinatra'
require 'sinatra/reloader' if development?

# http://127.0.0.1:4567/bet/20/on/6
get '/bet/:stake/on/:number' do
    stake = params[:stake].to_i
    number = params[:stake].to_i
    roll = rand(6) + 1
    if number == roll
        "It landed on #{roll}. Well done, you win #{6*stake} chips"
    else 
        "It landed on #{roll}. You lose your stake of #{stake} chips"
    end
end