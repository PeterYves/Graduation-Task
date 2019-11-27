Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :courses do
    resources :comments
  end
  resources :charges
  resources :payments, only: [:show]
  resources :pages
  root to: 'courses#index'
  devise_for :users, :controllers => { registrations: 'registrations' }

end
