Rails.application.routes.draw do
  
  resources :courses do
    resources :comments
  end
  resources :charges
  resources :payments, only: [:show]
  resources :pages
  root to: 'pages#home'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  
end
