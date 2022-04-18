Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :forums do
    resources :comments
  end
  root 'home#home', as: 'homepage_index'
  get 'aboutus', to: 'home#aboutus'
  get 'forum' , to:  'forums#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
