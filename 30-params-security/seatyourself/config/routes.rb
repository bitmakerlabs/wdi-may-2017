Rails.application.routes.draw do
  get 'restaurants/index'

  get 'restaurants/show'

  get 'home/show'
  root 'home#show'

  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
