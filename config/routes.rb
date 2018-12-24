Rails.application.routes.draw do
  get 'admin/index'
  root 'sessions#create', as: 'index'

  get 'admin' => 'admin#index'
  get 'logout' => 'sessions#destroy'

 controller :sessions do
   get  'login' => :new
   post 'login' => :create
   delete 'logout' => :destroy

 end
  get 'signup',to: 'users#new'
  get "sessions/create"
  get "sessions/destroy"
  get "search/index"
  post "search/index"
 resources :users
 resources :articles
end

