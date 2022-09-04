Rails.application.routes.draw do
  resources :libraries
  resources :locations
  
  namespace :api do
    namespace :v1 do
      resources :books, only: [ :index, :show ]
      resources :search_books, only: [ :create ]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
