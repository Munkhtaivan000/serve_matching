Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defines the roof path route ("/")
  # root "articles#index"
  # localhost:3000/parts
  resources :parts, only: [:index]

end
