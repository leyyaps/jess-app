Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :albums, only: [:show, :index]
  
  match '/contact_us',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  
  root to: 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
