Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  resources :trainers

end
