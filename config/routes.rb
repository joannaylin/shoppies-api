Rails.application.routes.draw do
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create]
  get "/users/:username", to: "users#show"

  resources :movies, only: [:create, :destroy]
end
