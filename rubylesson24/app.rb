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
	@error = 'something wrong!'
	erb :about
end

get '/something' do
	erb :something
end

get '/contacts' do
	erb :contacts
end

post '/contacts' do
	require 'pony'

	@email = params[:email]
	@usermessage = params[:usermessage]
	@name = params[:name]

	hh = {
		:email => 'Введите email',
		:usermessage => 'Введите сообщение',
		:name => 'Введите ваше имя'
	}

	@error = hh.select {|key| params[key] == ''}.values.join(", ")

	if @error != ''
		return erb :contacts
	end

	Pony.mail({
		:to => 'wotlexa064@gmail.com',
		:subject => params[:name] + " has contacted you (user email: #{params[:email]})",
		:body => params[:usermessage],
		:via => :smtp,
		:via_options => {
			:address              => 'smtp.gmail.com',
			:port                 => '587',
			:enable_starttls_auto => true,
			:user_name            => 'wotlexa064@gmail.com',
			:password             => 'lvjq telr igww emim',
			:authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
			:domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
		}
	}) 

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

	hh = {
		:username => 'Введите имя',
		:phone => 'Введите телефон',
		:datetime => 'Введите дату и время'
	}

	@error = hh.select {|key| params[key] == ''}.values.join(", ")

	if @error != ''
		return erb :visit
	end

	@title = 'Спасибо за запись!'
	@message = "Дорогой #{@username}, мы будем ждать вас #{@datetime}. Ваш парикмахер: #{@barber}, ваш цвет: #{@color}"

	f = File.open './public/users.txt', 'a'
	f.write "User: #{@username}, Phone: #{@phone}, Date and time: #{@datetime}, Barber: #{@barber}, Color: #{@color}\n"
	f.close

	erb :message
end