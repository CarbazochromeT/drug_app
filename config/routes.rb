Rails.application.routes.draw do
  namespace :admin do
    resources :drugs do
      collection { post :import }
    end
      resources :maker_names
      resources :symptoms
      resources :ingredients
      resources :users
      root to: "drugs#index"
  end

  get 'login' => 'user_sessions#new'
  post 'login' => "user_sessions#create"
  delete 'logout' => 'user_sessions#destroy'
  resource :profile, only: %i[show edit update]

  root to: 'static_pages#top'

  resources :static_pages
  resources :users, only: [:new, :create] 
  resources :drugs do
    collection do
      get :likes
    end
  end
  get 'drugs/rakuten_search'
  resources :likes, only: %i[create destroy]
  resources :ingredients, only: %i[show index]

end
