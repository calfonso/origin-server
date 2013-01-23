AdminConsole::Engine.routes.draw do
  root :to => "district#index"
  resources :district
  resources :node, :id => /[\w\.-]+/
  resources :user
  resources :application
  resources :gear
  resources :domain
  resources :user
end
