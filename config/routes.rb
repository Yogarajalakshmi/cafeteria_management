Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #root :to => "/"

  get "/" => "home#index"
  resources :users

  resources :cafeteria_mng

  #get "cafeteria_mng", to: "cafeteria_mng#index"
end
