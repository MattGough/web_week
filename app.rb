require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret codes"
end

get '/cat' do
  erb(:index)
end