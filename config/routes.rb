Rails.application.routes.draw do
  resources :profiles
  resources :articles
  resources :authors
  root 'authors#new'
  # get '/home'=>'articles#index'
  # get '/category'=>'articles#category'

  # get '/display'=>'articles#display'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
