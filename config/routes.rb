Rails.application.routes.draw do
  namespace :admin do
      resources :drugs do
        collection { post :import }
        collection do
          get :upload, action: 'upload_form'
          post :upload, action: 'upload_process'
          get 'admin/drugs.csv' => 'submit#drugs_to_csv'
        end
      end

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
