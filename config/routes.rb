Rails.application.routes.draw do
  resources :routes
  resources :tickets

  devise_for :users
  resources :users

  root 'routes#index'


  namespace :admin do
    root to: 'routes#index'
    resources :routes
    resources :users
  end

end
