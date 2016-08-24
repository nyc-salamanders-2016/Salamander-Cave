get '/' do
  redirect '/salamanders'
end


get '/salamanders' do
  @salamanders = Salamander.all
  erb :'salamanders/index'
end

get '/salamanders/new' do
  erb :'salamanders/new'
end

post '/salamanders' do
  salamander = Salamander.new(params[:salamander])
  if salamander.save
    redirect '/salamanders'
  else
    erb :'salamanders/new'
  end
end