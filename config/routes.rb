Rails.application.routes.draw do
  root to: 'posts#index'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :posts, except: [:destroy]
  resources :users, except: [:destroy]
  resources :categories, except: [:destroy]

  resources :programmes, except: [:destroy] do
    resources :topics    
  end

  resources :academies do
    resources :centres, except: [:destroy] do
      resources :rooms
    end
  end
  
  resources :timeslots
  resources :intakes, except: [:destroy]

end
