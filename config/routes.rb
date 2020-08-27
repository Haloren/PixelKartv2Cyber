Rails.application.routes.draw do
  root to: "sessions#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/auth/google_oauth2/callback', to: 'sessions#create_omniauth'
  
  get '/signup', to: 'users#new'

  delete '/logout', to: 'sessions#destroy'
  
  resources :reviews
  resources :karts
  resources :clubs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
