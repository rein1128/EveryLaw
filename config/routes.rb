Rails.application.routes.draw do
  get 'contacts/new'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'points/new'
  get 'users/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions, only: [:index,:show, :create, :edit, :update, :new] do
    resource :answers, only: [:create, :destroy]
  end
  root 'questions#index'

  resources :users, only: [:edit, :update, :show, :destroy]
  get 'user/about' => 'users#about'

  resources :contacts, only: [:new, :create]
end
