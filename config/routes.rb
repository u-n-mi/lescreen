Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :interviews, only: [:index, :new, :create, :show] do
    resources :questions, only: [:index, :new, :create]
    resources :videos, only: [:index, :new, :create, :show] do
      resources :reviews, only: [:new, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



