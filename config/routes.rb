Rails.application.routes.draw do
  resources :contents
  resources :variants
  resources :sections
  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
