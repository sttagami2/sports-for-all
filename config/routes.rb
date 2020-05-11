Rails.application.routes.draw do
  devise_for :users

  root 'home#top'
  get '/home/about', to: 'home#about'

  resources :users, only: [:edit, :update, :show]
  resources :events, only: [:new, :index, :create, :edit, :update, :show], shallow: true do
    resources :teams, only: [:new, :index, :create, :edit, :update, :show], shallow: true
    resources :participations, only: [:index, :new, :create, :edit, :update, :show], shallow: true
    resources :games do
      collection do
        get 'halfway'
      end
    end
  end

  resources :locations, only: [:new, :index, :create, :edit, :update, :show]
end
