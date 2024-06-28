Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defines the roof path route ("/")
  # root "articles#index"
  # localhost:3000/parts
  resources :users, only: [:index]
  resources :jobrecruitments, only: [:new, :create, :index]
  resources :jobapplications, only: [:index]
  root 'jobrecruitments#index'
  resources :home, only: [:index]
  get 'jobrecruitments', to: 'jobrecruitments#index'
  get 'jobapplications', to: 'jobapplications#index'
  get 'signingpage', to: 'users#sign_in' # Assuming you have a Users controller for sign in
  
  


end
