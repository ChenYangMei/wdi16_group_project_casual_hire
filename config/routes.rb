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

  # Ratings need to be broken into rate_user and rate_job.

  post '/jobs/:id/rate' => 'jobs#rate', :as => "rate_job"
  post '/job/:job_id/rate' => 'users#rate', :as => "rate_user"


  # Session
  get '/login' => 'session#new', :as => "login"
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => "logout"

end
