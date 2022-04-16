Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :forums
  root 'home#home'
  get 'forum' , to:  'forums#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
