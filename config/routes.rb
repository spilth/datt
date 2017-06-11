Rails.application.routes.draw do
  get 'main/index'

  resources :contents
  resources :variants
  resources :sections
  resources :documents

  root 'main#index'
end
