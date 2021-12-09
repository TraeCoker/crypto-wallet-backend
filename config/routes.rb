Rails.application.routes.draw do
  patch 'wallets/:id', to: 'wallets#update'
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
end
