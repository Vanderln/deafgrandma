get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @grandma = params[:user_input]
  if @grandma != @grandma.upcase
    @grandma = "Speak up, kiddo!"
  else 
    @grandma = "No, not since 1983!!!"
  end
  erb :index
end
