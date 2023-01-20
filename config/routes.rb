Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'about', to: 'pages#about'
  resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
end
