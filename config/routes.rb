Rails.application.routes.draw do
  root to: 'users#landing'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/weekly_view', to: 'timeslots#week'

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
    resources :klasses
  end
      
  resources :timeslots do
    collection do 
      get '/monthly_view', to: 'timeslots#month'
    end
  end

end
