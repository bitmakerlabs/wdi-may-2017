require 'sinatra'

# ROUTE:
# get '/hello'
# get '/goodbye'

get '/' do
  redirect to('/hello')
end

get '/hello' do
  #send_file('views/hello.html')

  @title = 'My awesome page'
  @current_time = Time.now
  @todo = [
    'Water the plants',
    'Eat breakfast',
    'Exercise'
  ]
  
  erb(:hello)
end

get '/goodbye' do
  'Goodbye Dave!'
end
