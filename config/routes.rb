Rails.application.routes.draw do
 devise_for :users

 resources :articles
 root 'articles#index'

 get 'comments/index'
 
  resources :comments
  get "articles/download_pdf"

    #Query string 
   # get'articles/:id', to: 'articles#show'
 #  get 'admin/index'
 #   root 'sessions#create', as: 'index'
 #   get 'admin' => 'admin#index'
 #   get 'logout' => 'sessions#destroy'

 #   controller :sessions do
 #   get   'login' => :new
 #   post  'login' => :create
 #  # Naming routes
 #   get 'logout', to:'sessions#destroy', as: :destroy
 # end
 #  get 'signup',to: 'users#new'
 #  get "sessions/create"
 #  get "sessions/destroy"
 #  get "search/index"
 #  post "search/index"


  #Nested route
  resources :articles do
      resources :comments
  end
  #member
  resources :articles do
     member  do
        get 'display'
      end 
  end
  resources :articles do
       get 'hello',on: :collection
  end
  # get 'articles/send'
  # get 'articles', to: 'articles#index'
  # post 'articles', to:'articles#create'
  # post 'articles/:id', to:'articles#update'
  # get 'new_article', to:'articles#new'
  # get '/article/:id/edit', to:'articles#edit', as: :edit_article
  # get'/article/:id/show', to:'articles#show', as: :article
  # patch '/article/update', to:'articles#update'
  # delete '/articles/:author_id/articles/:id', to:'articles#destroy'
end

