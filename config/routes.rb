Rails.application.routes.draw do

  root "jobs#index"

  resources :users
  resources :jobs
  resources :categories, :except => [:edit]

  resources :jobs do
    resources :comments
  end

end
