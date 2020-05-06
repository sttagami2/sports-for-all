Rails.application.routes.draw do
  get 'events/new'
  get 'events/index'
  get 'events/create'
  get 'events/edit'
  get 'events/update'
  get 'events/show'
  get 'home/top'
  get 'home/about'
  get 'locations/new'
  get 'locations/index'
  get 'locations/create'
  get 'locations/edit'
  get 'locations/update'
  get 'locations/show'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
