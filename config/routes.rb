Rails.application.routes.draw do
  root 'welcome#about'

  resources :chatrooms, only: [:index, :show, :new]
  resources :messages
  resources :registrations, only: [:new, :create]

  resource :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end
