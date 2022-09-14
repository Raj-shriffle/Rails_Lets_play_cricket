Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :userss
  resources :contestes
  resources :matchess
  resources :user_contests
  resources :user_teams

  # resources :contest do 
  #   resources :user_contests
  # end

  resources :contest do 
    resources :user_teams
  end

  root to:"userss#index"
  devise_for :users

  devise_scope :user do  
   get '/users/sign_out', to: 'devise/sessions#destroy'     
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


#contest/:id/user_contest/new