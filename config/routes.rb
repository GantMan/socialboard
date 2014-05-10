Socialboard::Application.routes.draw do
  resources :boards

  root :to => "home#index"
  match "present", to: "boards#present", via: :all
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end