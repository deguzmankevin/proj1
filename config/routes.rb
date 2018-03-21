Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  patch '/heal', to: 'pokemons#heal'
  patch '/trainers/:id', to: 'trainers#choose'
  get '/new', to: 'pokemons#show'
  post '/trainers/:id', to: 'pokemons#new'
  resources :trainers
end
