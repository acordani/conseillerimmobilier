Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :sales
  resources :experiences

  mount Attachinary::Engine => "/attachinary"
  
end
