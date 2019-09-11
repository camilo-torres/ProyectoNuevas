Rails.application.routes.draw do
  resources :purchases
  resources :games
  resources :developers
  resources :gamers
  resources :gamer_sessions
  get 'login' => 'gamer_sessions#new', as: :login
  get 'logout' => 'gamer_sessions#destroy', as: :logout
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
