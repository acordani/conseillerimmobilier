Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :sales
  resources :experiences
  resources :users, only: [:show]

  namespace :admin do
  	resources :sales, only: [:index]
  end

  mount Attachinary::Engine => "/attachinary"
  
end
