Rails.application.routes.draw do
  devise_for :users

  root 'home#top'
  get '/home/about', to: 'home#about'
  get 'users/:id/following', to: 'users#following'
  get 'users/:id/followers', to: 'users#followers'

  resources :relationships, only: [:create, :destroy]
  resources :users, only: [:index, :edit, :update, :show] do
    member do
      get :following, :followers
    end
  end
  resources :chats, only: [:create]
  resources :rooms, only: [:create, :show]
  resources :events, only: [:new, :index, :create, :edit, :update, :show], shallow: true do
    resources :comments, only: [:create, :destroy]
    resources :teams, only: [:new, :index, :create, :edit, :update, :show], shallow: true
    resources :participations, shallow: true
    resources :games do
      collection do
        get 'halfway'
        post 'halfway'
      end
    end
  end

  resources :locations, only: [:new, :index, :create, :edit, :update, :show]
end
