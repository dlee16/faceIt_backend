Rails.application.routes.draw do
  resources :userimages, only: [:index, :show, :create]
  resources :images, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
end
