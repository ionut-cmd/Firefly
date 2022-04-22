Rails.application.routes.draw do

  

  resources :messages
  resources :rooms
  resources :comments
  devise_for :users
  resources :forums do
    resources :comments
  end
  root 'home#home', as: 'homepage_index'
  get 'aboutus_new', to: 'home#aboutus_new'
  get 'forum' , to:  'forums#index'
  get 'rooms', to: 'rooms#index'

  get 'profile', to: 'devise#edit'
<<<<<<< HEAD
<<<<<<< HEAD
# >>>>>>> 26bf5b11cdc2a39423c5df7643670d3137dec216
=======

>>>>>>> ionut

  get 'gmap', to: 'home#gmap'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
>>>>>>> 79cc8c15f13094e6a15a2cc64770daa288911ec1
end
