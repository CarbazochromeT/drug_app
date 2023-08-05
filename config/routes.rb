Rails.application.routes.draw do
  get 'static_pages/help'
  root to: 'static_pages#top'
#  get '/login', to: 'user_sessions#new'
#  post '/login', to: 'user_sessions#create'
#  delete '/logout', to: 'user_sessions#destroy'
#  resources :users, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :static_pages
  # Defines the root path route ("/")
  # root "articles#index"
end
