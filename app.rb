require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret codes"
end


get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].shuffle.pop
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @age  = params[:age]
  erb(:index2)
end

# post '/named-cat' do
#   @details = params[:]
# end