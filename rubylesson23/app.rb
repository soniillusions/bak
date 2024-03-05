#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

configure do
	enable :sessions
end

get '/' do
	erb :index
end

get '/index' do
	erb :index
end

post '/index' do
	@login = params[:login]
	@password = params[:password]

	if @login == 'admin' && @password == 'admin'
		erb :loginpage
	else
		@title = 'Wrong password or username!'
		@message = 'Try again.'
		erb :message
	end
end

get '/about' do
	erb :about
end

get '/something' do
	erb :something
end

get '/contacts' do
	erb :contacts
end

post '/contacts' do
	@email = params[:email]
	@usermessage = params[:usermessage]

	@title = 'Спасибо за сообщение!'
	@message = "Мы ответим вам на почту в ближайщее время"
	
	f = File.open './public/contacts.txt', 'a'
	f.write "Email: #{@email}, Message: #{@usermessage}\n"
	f.close

	erb :message
end

get '/visit' do
	erb :visit
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:colorpicker]

	@title = 'Спасибо за запись!'
	@message = "Дорогой #{@username}, мы будем ждать вас #{@datetime}. Ваш парикмахер: #{@barber}, ваш цвет: #{@color}"

	f = File.open './public/users.txt', 'a'
	f.write "User: #{@username}, Phone: #{@phone}, Date and time: #{@datetime}, Barber: #{@barber}, Color: #{@color}\n"
	f.close

	erb :message
end