Rails.application.routes.draw do
  # get 'products/:id' => 'products#show', as: 'product'
  # http://localhost:3000/

  get    'login'     => 'sessions#new'
  delete 'logout'    => 'sessions#destroy'
  # get 'items/:id' => 'products#show'

  # resource :logins

  resources :stuffys
end

# product_path
# product_url