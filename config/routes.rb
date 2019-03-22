Rails.application.routes.draw do
  get "welcome/index"
  resources :configurations
  resources :images do
    resources :comments
  end
  devise_for :users, :skip => [:sessions, :registrations]
  devise_scope :user do
    # make some pretty URLs
    get "login" => "devise/sessions#new", :as => :new_user_session
    post "login" => "devise/sessions#create", :as => :user_session
    delete "logout" => "devise/sessions#destroy", :as => :destroy_user_session
    # rewrite the registrations URLs so they don't collide with my custom Users Controller
    get "signup" => "devise/registrations#new", :as => :new_user_registration
    put "update-registration" => "devise/registrations#update", :as => :update_user_registration
    delete "delete-registration" => "devise/registrations#destroy", :as => :delete_user_registration
    get "edit-registration" => "devise/registrations#edit", :as => :edit_user_registration
    get "cancel-registration" => "devise/registrations#cancel", :as => :cancel_user_registration
    post "create-registration" => "devise/registrations#create", :as => :user_registration
  end
  resources :users
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
