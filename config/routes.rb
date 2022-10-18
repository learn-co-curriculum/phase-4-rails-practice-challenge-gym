Rails.application.routes.draw do
  resources :memberships, only: [:index, :show, :create]
  resources :gyms, only: [:index, :show, :destroy]
  resources :clients, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
