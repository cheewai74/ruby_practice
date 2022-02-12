require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'sass'

# sass
get('/styles.css'){sass :styles}

# get '/' do
#     erb :home
# end

# slim
get '/' do
    slim :home
end

# get '/about' do
#     @title = "All about this website"
#     erb :about
# end

# slim
get '/about' do
    @title = "All about this website"
    slim :about
end

# get '/contact' do
#     erb :contact
# end

# slim
get '/contact' do
    slim :contact
end

set :public_folder, 'public'
set :views, 'views'

# # Sinatra has a special method for that, called not_found. 
# # It’s used just like the route handler blocks:
# not_found do
#     erb :not_found
# end

# slim
not_found do
    slim :not_found
end
