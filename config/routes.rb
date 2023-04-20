Rails.application.routes.draw do
  #get 'signups/index'
  #get 'signup/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #resources :users
  # get 'login', to: 'sessions#new'
  #resources :users

  #resources :sessions
  resources :signups 
  resources :logins

end
