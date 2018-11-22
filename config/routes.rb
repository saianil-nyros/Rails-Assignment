Rails.application.routes.draw do
  resources :projects
 root:to => 'welcome#index'
  get '/first'=>'welcome#second'
  get '/second'=>'welcome#third'
  get '/next'=>'welcome#contact'
  get '/signin'=>'welcome#signin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
