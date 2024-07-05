Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defines the roof path route ("/")
  # root "articles#index"
  # localhost:3000/parts
  resources :users, only: [:index]
  resources :jobrecruitments, only: [:new, :create, :index, :applying_information]
  resources :jobapplications, only: [:index, :new, :create, :apply_now, :update]
  resources :home, only: [:index]
  
  resources :jobapplications do
    collection do 
      get 'information'  
    end
    member do
      get 'apply_now'
      post 'apply_now', to: 'jobapplications#create'  

      get 'jobrecruitments', to: 'jobrecruitments#index'
      get 'jobapplications', to: 'jobapplications#index'
      get 'signingpage', to: 'users#sign_in' 

    end

   

  end

end