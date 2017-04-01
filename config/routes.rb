Rails.application.routes.draw do
  
  root 'suscriptions#new'
  
  get '/home', to: 'pages#home'

  resources :suscriptions
  
  get '/admin', to: "logins#new"
  post '/admin', to: "logins#create"
  get '/logout', to: "logins#destroy"
  
  
  
end
