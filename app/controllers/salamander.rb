get '/' do
  redirect '/salamanders'
end


get '/salamanders' do
  @salamanders = Salamander.all
  erb :'salamanders/index'
end