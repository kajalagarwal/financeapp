Rails.application.routes.draw do
 

  
  resources :purchases do
    collection { post :import }
  end

  

  
  get 'sessions/new'

  get 'signup' =>'users#new'




  get 'show' => 'uploadpage#show'
  
  
  root           'uploadpage#home'
   get 'index' => 'users#index'
   get  'login'   => 'sessions#new'
  post  'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  
end
