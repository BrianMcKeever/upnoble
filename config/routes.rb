Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "static#portal"
  resources :user_sessions, :except => [:show, :index, :edit, :update]
  resources :users
  resources :articles
end
