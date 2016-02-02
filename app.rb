require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret codes"
end

get '/house' do
  "house"
end