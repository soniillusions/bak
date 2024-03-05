require 'sinatra'

get '/' do
	erb :index
end

get '/contacts' do
	'Phone: 21342314'
end

get '/faq' do
	under_construction
end

get '/something' do
	under_construction
end

def under_construction
	@title = 'Under construction'
	@message = 'This page is under construction'
	erb :message
end

post '/' do
	@login = params[:aaa]
	@password = params[:bbb]

	if @login == 'admin' && @password == 'secret'
		erb :welcome
	elsif @login == 'admin' && @password == 'admin'
		@message = "Haha, nice try! Access denied"
		erb :index
	else
		@message = "Access denied"
		erb :index
	end
end

