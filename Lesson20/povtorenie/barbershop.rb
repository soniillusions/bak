require 'sinatra'

get '/' do
    erb :index
end

post '/' do
    @user_name = params[:user_name]
    @phone = params[:phone]
    @date_time = params[:date_time]

    @titile = 'Thank you!'
    @message = "Dear #{@user_name}, we'll be waiting you at #{@date_time}"

    f = File.open('./public/users.txt', 'a')
    f.write "User: #{@user_name}, Phone: #{@phone}, Date: #{@date_time} \n"
    f.close

    erb :message
end

get '/admin' do
    erb :admin
end

post '/admin' do
    @login = params[:login]
    @password = params[:password]

    if @login == "admin" && @password == "admin"
        redirect '/users.txt'
    else
        @title = "Try again"
        @message = "Wrong password or login"
        erb :message
    end
end
