AdminConsole::Engine.routes.draw do
  root :to => "district#index"
  resources :district
  resources :node
  resources :user
  resources :application
  resources :gear
end
