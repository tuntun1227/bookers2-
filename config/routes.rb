Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  resources :users
  resources :books
  post 'books' => 'books#create'

  resources :users, only: [:show, :edit, :update]

end
