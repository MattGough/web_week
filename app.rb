require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret codes"
end


get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].shuffle.pop
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age  = params[:age]
  erb :cat_view
end

get '/cat-form' do
  p params
  erb :cat_form
end
