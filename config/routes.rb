Rails.application.routes.draw do

  resources :users
  resources :categories, :except => [:edit]

  resources :jobs do
    resources :comments
  end
  
end
