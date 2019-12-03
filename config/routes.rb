Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profils, only: [:show]
  resources :preferences
  resources :work_experiences
  resources :jobs do
    resources :missions, only: [:create]
    resources :favorites, except: [:destroy]
  end
  resources :favorites, only: [:destroy]
  resources :missions, only: [:destroy]

end
