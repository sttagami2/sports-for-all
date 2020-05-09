Rails.application.routes.draw do
  devise_for :users

  root 'home#top'
  get 'home/about'
  get 'events/event_id//games/halfway'
  post 'teams/team_id/games/halfway'

  resources :users, only: [:edit, :update, :show]
  resources :events, only: [:new, :index, :create, :edit, :update, :show], shallow: true do
    resources :teams, only: [:new, :index, :create, :edit, :update, :show], shallow: true
    resources :participations, only: [:index, :new, :create, :edit, :update, :show], shallow: true
    resources :games
  end

  resources :locations, only: [:new, :index, :create, :edit, :update, :show]
end
