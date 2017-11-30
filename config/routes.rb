Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :sales
  resources :experiences

  mount Attachinary::Engine => "/attachinary"
  
end
