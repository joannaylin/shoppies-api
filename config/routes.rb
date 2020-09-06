Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :create]
  get "/users/:username", to: "users#show"
  
  resources :movies, only: [:create, :destroy]

  root "users#index"
end
