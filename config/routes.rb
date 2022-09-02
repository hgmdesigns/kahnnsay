Rails.application.routes.draw do
  resources :locations
  
  namespace :api do
    namespace :v1 do
      resources :books, only: [ :index ]
      resources :search_books, only: [ :create ]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
