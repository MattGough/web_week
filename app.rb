require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret codes"
end


get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].shuffle.pop
  erb(:index)
end