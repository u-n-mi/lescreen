Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'users#dashboard'
  get 'calendar', to: 'pages#calendar'
  get 'videos', to: 'pages#videos'
  get 'settings', to: 'pages#settings'
  post 'sendsms', to: 'videos#send_sms'
  resources :interviews, only: [:index, :new, :create, :show] do
    resources :questions, only: [:index, :new, :create]
    resources :videos, only: [:index, :new, :create, :show] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :candidates, only: [:create, :new, :show]
  resources :searches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



