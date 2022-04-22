Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :forums do
    resources :comments
  end
  root 'home#home', as: 'homepage_index'
  get 'aboutus_new', to: 'home#aboutus_new'
  get 'forum' , to:  'forums#index'
# <<<<<<< HEAD
#   get 'aboutus_new', to: 'home#aboutus_new'
# =======
  get 'profile', to: 'devise#edit'
end
