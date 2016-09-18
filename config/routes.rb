Rails.application.routes.draw do

  get 'jobs/edit'

  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/show'

  resources :users
  resources :jobs
  resources :categories, :except => [:edit]

  resources :jobs do
    resources :comments
  end

end
