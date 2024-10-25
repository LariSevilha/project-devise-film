Rails.application.routes.draw do
  devise_for :users
  resources :movies
  # Defines the root path route ("/")
  root "movies#index"
end
