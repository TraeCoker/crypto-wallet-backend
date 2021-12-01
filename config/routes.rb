Rails.application.routes.draw do
  resources :snapshots
  resources :wallets
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
end
