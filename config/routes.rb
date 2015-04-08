Rails.application.routes.draw do
  root :to => "home#index"

  resources :test
  resources :home
end
