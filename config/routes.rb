Rails.application.routes.draw do
  root 'welcome#index'
  patch 'wallets/:id', to: 'wallets#update'
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
end
