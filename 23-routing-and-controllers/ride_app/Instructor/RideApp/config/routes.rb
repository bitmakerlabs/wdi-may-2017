Rails.application.routes.draw do
  get 'about', => 'rides#about'
  get 'lorem' => 'rides#lorem_ride'
end
