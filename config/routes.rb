Rails.application.routes.draw do
  patch 'wallet/:id', to: 'wallet#update'
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
end
