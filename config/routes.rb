Rails.application.routes.draw do
  devise_for :users
  resources :media
  root "home#index"
end
