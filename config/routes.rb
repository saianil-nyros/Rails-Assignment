Rails.application.routes.draw do
  resources :profiles
  resources :articles
  resources :authors
  root 'authors#new'
  get '/home'=>'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
