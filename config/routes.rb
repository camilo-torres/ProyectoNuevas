Rails.application.routes.draw do
  resources :purchases
  resources :games
  resources :developers
  resources :gamers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
