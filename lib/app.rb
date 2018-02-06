require 'sinatra'
# preventing issues with sending secure session information
set :session_secret, 'super secret'

get "/" do
  "Hello! test"
end

get "/secret" do
  "Hello Marcus and Sam!"
end

get "/bensmagicbox" do
  "My box is full of magic things"
end

get "/random-cat" do
  @time = Time.now
  @names = ["Amigo", "Oscar", "Marcus", "Hunor"].sample
  erb(:index)
end

get "/named-cat" do
  @time = Time.now
  p params
  @names = params[:name]
  erb(:index)
end

get "/named-cat2" do
  @time = Time.now
  p params
  @names = params[:name]
  erb(:index)
end

get "/football" do
  erb(:football)
end
# send_file('/root/dev/notes/images/'+params[:file], :disposition => 'inline')
