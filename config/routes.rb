Rails.application.routes.draw do
  root to: 'posts#index'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :posts
  resources :users
  resources :categories

  resources :programmes do
    resources :topics    
  end

  resources :academies do
    resources :centres do
      resources :rooms
    end
  end

  resources :intakes do
    resources :klasses do
      resources :timeslots
    end
  end

end
