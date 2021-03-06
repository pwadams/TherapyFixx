Rails.application.routes.draw do

  root 'home#index'
  resources :home, only: [:new]

   get 'sign-up', to: 'users#new'
   post 'sign-up', to: 'users#create'
   get 'sign-in', to: 'authentication#new'
   post 'sign-in', to: 'authentication#create'
   get 'sign-out', to: 'authentication#destroy'

  resources :sessions, only: [:index]

  resources :assessments, only: [:index]
  resources :anxiety_scales
  resources :stress_logs


  resources :journals do
    resources :entries
  end

  resources :users, only: [:index, :show]

end
