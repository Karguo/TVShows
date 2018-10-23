require 'pry'     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require_relative 'db_config'
require_relative 'models/show'
require_relative 'models/comment'
require_relative 'models/like'
require_relative 'models/user'
require_relative 'models/suggestion'

enable :sessions

helpers do

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end

get '/' do
  @shows = Show.all
  erb :index
end

get '/shows/:id' do
  @show = Show.find(params[:id])
  @comments = @show.comments
  erb :show
end

get '/login' do
  erb :login
end

get '/suggestions' do
  erb :suggestion
end

get '/new' do
  erb :new
end

post '/shows' do
  show = Show.new
  show.title = params[:title]
  show.year = params[:year]
  show.image_url = params[:image_url]
  show.body = params[:body]
  show.save
end

post '/likes' do
  redirect to('/login') unless logged_in?
  like = Like.new
  like.show_id = params[:show_id]
  like.user_id = params[:user_id]
  like.save
  redirect to("/shows/#{params[:show_id]}")
end

post '/suggestions' do
  redirect to('/login') unless logged_in?
  suggestion = Suggestion.new
  suggestion.user_id = params[:user_id]
  suggestion.save
  redirect to('/')
end

post '/comments' do
  redirect to('/login') unless logged_in?
  comment = Comment.new
  comment.show_id = params[:show_id]
  comment.user_id = params[:user_id]
  comment.save
  redirect to("/shows/#{params[:show_id]}")
end

delete '/comments/:id' do
  comment = Comment.find(params[:id])
  comment.destroy
  redirect to("/shows/#{comment[:show_id]}")
end

post '/session' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password]) 
    session[:user_id] = user.id
    redirect to('/')
  else
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to('/login')
end