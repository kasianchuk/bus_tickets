Rails.application.routes.draw do
  resources :routes
  root 'routes#index'
  devise_for :users

  namespace :admin do
    root to: 'routes#index'
    resources :routes
    resources :users
  end

end
