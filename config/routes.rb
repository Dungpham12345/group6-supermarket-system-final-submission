require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :sales
  resources :staffs
  resources :memberships
  resources :products
  resources :suppliers
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
