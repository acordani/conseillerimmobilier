Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for 	:users,
  				:controllers => {
  					:registrations => 'registrations'
  				}

  root to: 'pages#home'

  resources :sales
  
  resources :users, only: [:show] do
    resources :experiences
  end

  namespace :admin do
  	resources :sales, only: [:index]
  end

  mount Attachinary::Engine => "/attachinary"
  
end
