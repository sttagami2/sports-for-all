Rails.application.routes.draw do
  devise_for :users

  root 'home#top'
  get '/home/about', to: 'home#about'
  get '/users/:id/following', to: 'users#following'
  get '/users/:id/followers', to: 'users#followers'
  get '/search', to: 'search#search'

  resources :relationships, only: [:create, :destroy]
  resources :users, only: [:edit, :update, :show] do
    member do
      get :following, :followers
    end
  end
  resources :chats, only: [:create]
  resources :rooms, only: [:create, :show]
  resources :events, only: [:new, :index, :create, :edit, :update, :show] do
    resources :comments, only: [:create, :destroy]
    resources :teams, only: [:new, :index, :create, :edit, :update, :show], shallow: true
    resources :participations, shallow: true
    resources :games, only: [:new, :index, :create, :edit, :update, :show] do
      collection do
        get 'halfway'
        post 'halfway'
        get 'battles'
        post 'battles'
      end
    end
  end

  resources :locations, only: [:new, :index, :create, :edit, :update, :show]
end
