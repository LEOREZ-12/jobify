Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resource :dashboard, only: [:show]
#  get 'dashboard', to: 'dashboard#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :applies, only: [:show, :index] do
    resources :steps, only: [:create]
    resources :comments, only: [:create]
  end
  resources :steps, only: [:update]
end
