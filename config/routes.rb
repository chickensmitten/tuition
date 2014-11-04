Rails.application.routes.draw do
  root to: 'posts#index'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


  resources :posts, except: [:destroy]
  resources :users, except: [:destroy]
  resources :programmes, except: [:destroy]
  resources :centres, except: [:destroy]
  resources :categories, except: [:destroy]


end
