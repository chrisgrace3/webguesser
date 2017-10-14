require 'sinatra'
require 'sinatra/reloader'

get '/' do
  x = rand(101)
  "The SECRET NUMBER is #{x}!"
end
