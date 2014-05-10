Socialboard::Application.routes.draw do
  resources :boards

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end