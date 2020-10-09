Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :destroy, :update]
  resources :relationships, only: [:create, :destroy, :update]
  resources :posts, only: [:create, :show, :destroy, :update]
  resources :comments, only: [:create, :show, :destroy, :update]
end
