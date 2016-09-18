Rails.application.routes.draw do

  root "jobs#index"

  resources :users
  resources :jobs
  resources :categories, :except => [:edit]

  resources :jobs do
    resources :comments
  end

  # Session
  get '/login' => 'session#new', :as => "login"
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => "logout"

end
