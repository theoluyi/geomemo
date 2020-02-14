Rails.application.routes.draw do
  #sessions----------------
    get 'signup', to: 'users#new'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'authorized', to: 'sessions#page_requires_login'
    delete 'logout',  to: 'sessions#destroy'

  resources :users, only: [:new, :create, :destroy]
  root 'locations#index'
  resources :notes
  resources :locations
  resources :notebooks, only: [:index, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
