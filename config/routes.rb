Rails.application.routes.draw do
  get 'main/index'

  resources :contents
  resources :variants
  resources :sections do
    member do
      put 'move_up'
      put 'move_down'
    end
  end
  resources :documents

  root 'main#index'
end
