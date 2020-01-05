# frozen_string_literal: true

Rails.application.routes.draw do
  resources :entries
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'entries#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'history' => 'pages#history', as: 'history'
  get 'photos' => 'pages#photos', as: 'photos'
  get 'posts' => 'posts#new', as: 'create_post'
  get 'search' => 'posts#search', as: 'search_page'
  resources :posts
end
