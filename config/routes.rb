Rails.application.routes.draw do
  # devise_for :users, skip: [:registrations]
  # as :user do
  #   get 'login', to: 'devise/sessions#new', as: :new_user_session
  #   post 'login', to: 'devise/sessions#new', as: :user_session
  #   delete 'signout', to: 'devise/sessions#destroy', as: :destroy_session
  # end

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  resources :albums, only: [:show, :index]
  
  # namespace :users do
  #   get 'dashboard' => 'dashboard#index', as: :dashboard
  # end
  
  match '/contact_us',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  
  root to: 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
