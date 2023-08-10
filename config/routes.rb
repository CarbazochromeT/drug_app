Rails.application.routes.draw do
  get 'login' => 'user_sessions#new'
  post 'login' => "user_sessions#create"
  delete 'logout' => 'user_sessions#destroy'

  root to: 'static_pages#top'

  resources :static_pages
  resources :users, only: [:new, :create]
end
