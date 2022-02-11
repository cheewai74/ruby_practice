require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    erb :home
end

get '/about' do
    @title = "All about this website"
    erb :about
end

get '/contact' do
    erb :contact
end

set :public_folder, 'public'
set :views, 'views'

# Sinatra has a special method for that, called not_found. 
# It’s used just like the route handler blocks:
not_found do
    erb :not_found
end
