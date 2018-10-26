Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  post 'new', to: 'pokemons#create'
  patch 'create', to: 'pokemons#create'
  resources :trainers, :pokemons
end