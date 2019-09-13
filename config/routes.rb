Rails.application.routes.draw do
  root 'home#index'
  resources :gamers do
	resources :games
	end
  resources :purchases
  resources :games
  resources :developers
  resources :gamers
  resources :gamer_sessions, only: [:new, :create, :destroy]
	
	get 'login', to:'gamer_sessions#new', as: 'login'
	get 'logout', to:'gamer_sessions#destroy', as: 'logout'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
