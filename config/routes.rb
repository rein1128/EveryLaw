Rails.application.routes.draw do
  get 'points/new'
  get 'answers/new'
  get 'users/new'
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions, only: [:show, :create, :edit, :update, :new]
  root 'questions#index'

  resources :users, only: [:show, :edit, :update]
end
