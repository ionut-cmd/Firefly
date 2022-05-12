Rails.application.routes.draw do

  

  resources :messages
  resources :rooms
  resources :comments
  resources :contacts, only: [:new, :create]
  devise_for :users
  resources :forums do
    resources :comments
  end
  root 'home#home', as: 'homepage_index'
  get 'aboutus_new', to: 'home#aboutus_new'
  get 'forum' , to:  'forums#index'
  get 'rooms', to: 'rooms#index'
  get 'contact us', to: 'contacts#new'

  get 'profile', to: 'devise#edit'

  get 'gmap', to: 'home#gmap'


end
