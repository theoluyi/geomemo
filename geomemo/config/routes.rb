Rails.application.routes.draw do
  root 'notebooks#index'
  resources :notes
  resources :locations
  resources :notebooks, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
