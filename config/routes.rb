Rails.application.routes.draw do
  resources :courses do
    resources :comments
  end
  resources :charges
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  root to: 'courses#index'
end
