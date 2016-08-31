Rails.application.routes.draw do
  
  resources :users

  #challenge view
  get "challenge/:id" => 'page#challenge'
  
  #create challenge
  post "page/create_challenge" => 'page#create_challenge'
  
  #close challenge (accept / decline)
  post "page/close_challenge" => 'page#close_challenge'
  
  #logout action
  get "/logout" => "users#logout" 
  
  #register view, register action
  post "/register"=>'users#register'
  get "/register"=>'users#register'
  
  #login view, login action
  get '/login'=> 'users#login'
  post '/login'=> 'users#login' 
  
  #profile view
  get '/profile/:id' => "users#profile"
  
  
  #dashboard, list of players, challenge, stats
  get "/" => 'page#dashboard'
  
 
end
