# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movie_categories
  resources :categories
  resources :movie_users
  resources :movies
  root to: 'welcome#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
