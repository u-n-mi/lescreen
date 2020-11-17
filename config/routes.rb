Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :interviews, only: [:new, :create, :show, :index] do
    resources :videos, only: [:index, :create, :new]
  end
end

