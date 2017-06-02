require 'sinatra'

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

  @recipes = [
    'BBQ Ribs',
    'Avocado Sushi',
    'Gluten Free Pancakes',
    'Slow cooker stew'
  ]

  erb :recipes
end
