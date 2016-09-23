Rails.application.routes.draw do

  root 'users#index'
  resources :users
  resources :jobs, :ratings
  resources :categories, :except => [:edit]
  resources :applicants

  get "/coordinates" => 'jobs#coordinates'

  put '/jobs/:id/status_in_progress' => 'jobs#status_in_progress'
  patch '/jobs/:id/status_in_progress' => 'jobs#status_in_progress'

  put '/jobs/:id/status_completed' => 'jobs#status_completed'
  patch '/jobs/:id/status_completed' => 'jobs#status_completed'

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
