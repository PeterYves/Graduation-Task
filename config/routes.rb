Rails.application.routes.draw do
  resources :courses do
    resources :comments
  end
  resources :charges
  resources :payments, only: [:show]
  root to: 'courses#index'
end
