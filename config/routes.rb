require 'sidekiq/web'

Rails.application.routes.draw do
  resources :staffs
  resources :sales
  resources :memberships
  resources :products
  resources :suppliers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'products#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
