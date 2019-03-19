Rails.application.routes.draw do
  get "welcome/index"
  resources :configurations
  resources :comments
  resources :images
  devise_for :users
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
