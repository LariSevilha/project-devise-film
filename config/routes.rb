Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    member do
      delete 'photos/:photo_id', to: 'movies#destroy_photo', as:
    'destroy_photo'
    end
  end
  # Defines the root path route ("/")
  root "movies#index"
end
