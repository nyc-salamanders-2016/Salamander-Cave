get '/' do
  redirect '/salamanders'
end


get '/salamanders' do
  @salamanders = Salamander.all
  erb :'salamanders/index'
end

get '/salamanders/new' do
  # p "I'm in the route!"
  if request.xhr?
    erb :'salamanders/new', layout: false
  else
    erb :'salamanders/new'
  end
end

post '/salamanders' do
  salamander = Salamander.new(params[:salamander])
  if salamander.save
    redirect '/salamanders'
  else
    erb :'salamanders/new'
  end
end

get '/salamanders/:id' do
  @salamander = Salamander.find(params[:id])
  erb :'salamanders/show'
end