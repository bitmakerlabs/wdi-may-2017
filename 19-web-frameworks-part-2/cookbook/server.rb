require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact_us' do
  erb :contact_us
end

get '/blog' do
  erb :blog
end

get '/recipes' do
  @recipes = Recipe.all
  erb :recipes
end

get '/recipes/:id' do
  params[:id]
end
