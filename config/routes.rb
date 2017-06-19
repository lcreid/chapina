Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "bienvenida#index"

  resources :solicitantes, only: [:new, :create]
  resources :bienvenida, only: [:index]
end
