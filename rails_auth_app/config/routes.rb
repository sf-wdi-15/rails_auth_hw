Rails.application.routes.draw do

  get 'article/index'

  root to: 'article/index'

  get '/article', to: 'article#index'

  get '/article/new', to 'article#new', as: 'new_article'
  
  post '/article' to 'article#create'

  get '/article/:id', to: 'article#show', as 'article'

  get 'article/:id/edit', to: 'article#edit', as: 'edit_blog'

  patch '/article/:id', to: 'article#update'

  delete '/blogs/:id', to: 'blogs#destroy'
  
  get '/login', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'

  get '/sign_up', to: 'users#new', as: 'sign_up'

  resources :users

end
