#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "leprosorium.db"}

class Post < ActiveRecord::Base
	self.table_name = "posts2"
	validates :message, presence: true
	validates :username, presence: true, length: {minimum: 3, maximum: 17}

	has_many :comments, dependent: :destroy
end
class Comment < ActiveRecord::Base
	self.table_name = "comments2"
	belongs_to :post

	validates :message, presence: true
	validates :username, presence: true, length: {minimum: 3, maximum: 17}
end

before do
	@posts = Post.all
	@comments = Comment.all
end

get '/' do
	@posts = Post.order('created_at DESC')
	erb :index
end

get '/newpost' do
	erb :newpost
end

post '/newpost' do
	@post = Post.new(params[:post2])
	if @post.save
		erb "Спасибо, вы записались"
	else
		@error = @post.errors.full_messages.first
		erb :newpost
	end
end

get '/post/:id' do
	@post = Post.find(params[:id])
	@comments = @post.comments.order(created_at: :desc)
	erb :post
end

post '/post/:id' do
	@comment = Comment.new(params[:comment])
	@comment.post_id = params[:id]
	if @comment.save
		redirect to("/post/#{params[:id]}")
	else
		@error = @comment.errors.full_messages.first
		erb :post
	end
end
