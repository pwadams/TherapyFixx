Rails.application.routes.draw do

  root 'home#index'

  get 'sign-up', to: 'users#new'
   post 'sign-up', to: 'users#create'
   get 'sign-in', to: 'authentication#new'
   post 'sign-in', to: 'authentication#create'
   get 'sign-out', to: 'authentication#destroy'

  resources :sessions

  resources :assessments, only: [:index]
  resources :anxiety_scales, only: [:new, :show]
  resources :blue_scales, only: [:new, :show]
  resources :stress_logs, only: [:new, :show]


  resources :journals do
    resources :entries
  end

  resources :users, only: [:index, :show]

end
