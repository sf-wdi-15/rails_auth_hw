Rails.application.routes.draw do
  
  # root routes
    root to: 'users#index'
    get '/', to: 'users#index'

  # article routes
    resources :articles
  
  # user routes
    resources :users, except: [:index, :new]
  
  # session routes
    get '/signup', to: 'users#new', as: 'signup'
    resources :sessions, only: [:create, :destroy]
    get '/login', to: 'sessions#new', as: 'login'
    

end
