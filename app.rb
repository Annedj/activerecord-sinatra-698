require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry-byebug'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

post "/restaurants" do
  # get the name and address from the form
  # create a new restaurant
  name = params[:name]
  address = params[:address]
  Restaurant.create(name: name, address: address)
  redirect "/"
end
