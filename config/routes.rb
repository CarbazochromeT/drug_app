Rails.application.routes.draw do
  namespace :admin do
      resources :drugs
      resources :drug_ingredients
      resources :drug_symptoms
      resources :ingredients
      resources :maker_names
      resources :symptoms
      resources :users

      root to: "drugs#index"
    end

  get 'login' => 'user_sessions#new'
  post 'login' => "user_sessions#create"
  delete 'logout' => 'user_sessions#destroy'

  root to: 'static_pages#top'

  resources :static_pages
  resources :users, only: [:new, :create]
  resources :drugs do
    collection do
      get :bookmarks
    end
  end
  get '/search', to: 'drugs#search'
end
