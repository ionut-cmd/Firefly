Rails.application.routes.draw do

  

  resources :comments
  devise_for :users
  resources :forums do
    resources :comments
  end
  root 'home#home', as: 'homepage_index'
  get 'aboutus_new', to: 'home#aboutus_new'
  get 'forum' , to:  'forums#index'
  get 'ionut', to: 'home#ionut'
# <<<<<<< HEAD
#   get 'aboutus_new', to: 'home#aboutus_new'
# =======
  get 'profile', to: 'devise#edit'
# >>>>>>> 26bf5b11cdc2a39423c5df7643670d3137dec216

  get 'gmap', to: 'home#gmap'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
