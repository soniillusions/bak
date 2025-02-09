require 'rubygems'
require 'sinatra'

configure do
  enable :sessions
end

helpers do
  def username
    session[:identity] ? session[:identity] : 'Hello stranger'
  end
end

before '/secure/*' do
  unless session[:identity]
    session[:previous_url] = request.path
    @error = 'Sorry, you need to be logged in to visit ' + request.path
    halt erb(:login_form)
  end
end

get '/' do
  erb 'Can you handle a <a href="/secure/place">secret</a>?'
end

get '/login/form' do
  erb :login_form
end

get '/docs' do
  erb :docs
end

post '/login/form' do
  @login = params['username']
  @password = params['password']
  if @login == 'admin' && @password == 'secret'
    session[:identity] = params['username'] 
    where_user_came_from = session[:previous_url] || '/'
    redirect to where_user_came_from
  else
    @title = 'Wrong password or username!'
    @message = 'Try again.'
    erb :message
  end
end

get '/logout' do
  session.delete(:identity)
  erb "<div class='alert alert-message'>Logged out</div>"
end

get '/secure/place' do
  erb 'This is a secret place that only <%=session[:identity]%> has access to!'
end
