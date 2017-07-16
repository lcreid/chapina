Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "bienvenida#index"

  resources :bienvenida, only: [:index]
  resources :contactos, only: [:create, :new]
  resources :encuestas, only: [:create, :new]
  resources :quienes_somos, only: [:index]
end
