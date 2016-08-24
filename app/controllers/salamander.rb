get '/' do
  redirect '/salamanders'
end


get '/salamanders' do
  erb :'salamanders/index'
end
