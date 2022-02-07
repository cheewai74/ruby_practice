"""
Execute in cmder
"""
require 'sinatra'

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
  'John''s, web!'
end