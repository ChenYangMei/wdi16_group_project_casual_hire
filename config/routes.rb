Rails.application.routes.draw do

  root 'users#index'
  resources :users
  resources :jobs, :ratings
  resources :categories, :except => [:edit]
  resources :applicants

  put '/jobs/:id/increment' => 'jobs#increment'
  patch '/jobs/:id/increment' => 'jobs#increment'

  resources :jobs do
    resources :applicants, :only => [:create]
    resources :comments
  end

  # Session
  get '/login' => 'session#new', :as => "login"
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => "logout"

end
