Rails.application.routes.draw do
  
  root 'suscriptions#new'
  
  get '/home', to: 'pages#home'

  resources :suscriptions
  
  get '/new-mamamia', to: 'suscriptions#newmamamia'
  post '/new-mamamia', to: 'suscriptions#create'
  
  get '/admin', to: "logins#new"
  post '/admin', to: "logins#create"
  get '/logout', to: "logins#destroy"
  
  
  
end
