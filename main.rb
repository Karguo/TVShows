require 'pry'     
require 'sinatra'
# require 'sinatra/reloader'
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

get '/signup' do
  erb :signup
end

post '/signup' do
  user = User.new
  user.email = params[:email]
  user.password = params[:password]
  user.save
  redirect to('/login')
end

get '/login' do
  erb :login
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

get '/suggestions' do
  @suggestions = Suggestion.all
  erb :suggestion
end

get '/new' do
  erb :new
end

get '/error' do
  erb :error
end

post '/shows' do
  redirect to('/login') unless logged_in?
  redirect to('/error') unless current_user.admin?
  show = Show.new
  show.title = params[:title]
  show.year = params[:year]
  show.image_url = params[:image_url]
  show.body = params[:body]
  show.save
  redirect to('/')
end

delete '/shows/:id' do 
  redirect to('/login') unless logged_in?
  redirect to('/error') unless current_user.admin?
  show = Show.find(params[:id])
  show.destroy
  redirect to('/')
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
  suggestion.body = params[:body]
  suggestion.save
  redirect to('/')
end

delete '/suggestions/:id' do
  redirect to('/login') unless logged_in?
  redirect to('/error') unless current_user.admin?
  suggestion = Suggestion.find(params[:id])
  suggestion.destroy
  redirect to('/suggestions')
end

post '/comments' do
  redirect to('/error') unless logged_in?
  comment = Comment.new
  comment.show_id = params[:show_id]
  comment.user_id = params[:user_id]
  comment.body = params[:body]
  comment.save
  redirect to("/shows/#{params[:show_id]}")
end

delete '/comments/:id' do
  redirect to('/login') unless logged_in?
  redirect to('/error') unless current_user.admin?
  comment = Comment.find(params[:id])
  comment.destroy
  redirect to("/shows/#{comment[:show_id]}")
end

