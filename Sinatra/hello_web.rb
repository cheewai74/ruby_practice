"""
Execute in cmder
"""
require 'sinatra'
require  'sinatra/reloader' if development?

get '/' do
  'Hello world!'
end

# Setup a route for Get Request with a path of "/hello"
#http://127.0.0.1:4567/hello
get '/hello' do
  'Hello, web!'
end

# Setup a route for Get Request with a path of "/salut"
# http://127.0.0.1:4567/salut
get '/salut' do
  'Salut web!'
end

# Setup a route for Get Request with a path of "/John"
# http://127.0.0.1:4567/John
get '/John' do
  name = "John"
  "#{name}, web!"
end

get '/:name' do
  name = params[:name]
  "Hi there #{name} !"
end

# http://127.0.0.1:4567/tom/dick/harry
get '/:one/:two/:three' do
  "first: #{params[:one]}, second: #{params[:two]}, third: #{params[:three]}"
end

# http://127.0.0.1:4567/what/time/is/it/in/3/hours
get '/what/time/is/it/in/:number/hours' do
  number = params[:number].to_i
  time = Time.now + number * 3600
  "The time in #{number} hours will be #{time.strftime('%I:%M %p')}"
end

