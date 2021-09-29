Rails.application.routes.draw do

  resources :posts
  devise_for :users

  # ROOT PATH IS USED IN NAVBAR
  # root 'pages#about'

  # CHANGED IN V2 FROM PAGES-ABOUT
  root 'posts#index'

  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
