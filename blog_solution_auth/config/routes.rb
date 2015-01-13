Rails.application.routes.draw do

  root to: "sites#index"

  get "/contact", to: "sites#contact", as: "contact"

  get "/about", to: "sites#about", as: "about"

  resources :articles

  resources :users, except: [:index]

  resources :sessions, only: [:new, :create, :destroy]

end
