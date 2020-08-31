Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'agencies#index'
  get '/perfil', to: 'pages#perfil', as: 'perfil'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :agencies, only: [:index, :show] do
    resources :activities, only: [:index, :show]
  end
end