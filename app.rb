require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"

configure :development, :test do
  require "pry"
end

configure do
  set :views, "app/views"
end

Dir[File.join(File.dirname(__FILE__), "app", "**", "*.rb")].each do |file|
  require file
  also_reload file
end

get "/" do
  @title = "Welcome to the Bookshelf!"
  erb :index
end

get "/authors" do
  @authors = Author.order(created_at: :desc).limit(10)
  erb :authors
end

get "/authors/:id/books" do
  @author = Author.find(params[:id])
  @books = @author.books
  erb :books
end

get "/books" do
  @books = Book.order(created_at: :desc).limit(10)
  erb :books
end

get "/people" do
  @people = Person.order(created_at: :desc).limit(10)
  erb :people
end

