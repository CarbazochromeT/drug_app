Rails.application.routes.draw do
  namespace :admin do
      resources :drugs
      resources :users
      resources :symptoms
      resources :ingredients
      resources :maker_names
      root to: "drugs#index"
    end
  get 'login' => 'user_sessions#new'
  post 'login' => "user_sessions#create"
  delete 'logout' => 'user_sessions#destroy'

  root to: 'static_pages#top'

  resources :static_pages
  resources :users, only: [:new, :create]
  resources :drugs
  get '/search', to: 'drugs#search'
end
