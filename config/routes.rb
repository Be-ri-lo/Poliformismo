Rails.application.routes.draw do
  get 'homes/index'
  resources :comments
  resources :images
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
