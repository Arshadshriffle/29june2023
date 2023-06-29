Rails.application.routes.draw do
  get 'comments/index'
  get 'articles/index'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'articles#index'
  resources :users do
    resources :artilces do 
      resources :comments
end
end
end
