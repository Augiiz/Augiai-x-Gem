Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'history' => 'pages#history', as: 'history'
  get 'photos' => 'pages#photos', as: 'photos'
  get 'posts' => 'posts#new', as: 'create_post'
  get 'search' => 'posts#search', as: 'search_page'

  resources :posts

end
