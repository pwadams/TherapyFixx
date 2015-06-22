Rails.application.routes.draw do

  root 'home#index'

  get 'sign-up', to: 'patients#new'
   post 'sign-up', to: 'patients#create'
   get 'sign-in', to: 'authentication#new'
   post 'sign-in', to: 'authentication#create'
   get 'sign-out', to: 'authentication#destroy'

   get 'anxiety_scale', to: 'assessments#index'

  resources :sessions

  resources :assessments, only: [:index]
  resources :anxiety_scales, only: [:show]
  resources :blue_scales, only: [:show]
  resources :stress_logs, only: [:show]


  resources :journals do
    resources :entries
  end

  resources :patients

  resources :entries, only: [:show] do
     resources :comments, only: [:create]
  end

end
