Rails.application.routes.draw do
  get 'waypoint/index'
  get 'waypoint/new'
  get 'waypoint/create'
  get 'waypoint/show'
  get 'waypoint/show'
  get 'waypoint/index'
  get 'waypoint/new'
  get 'waypoint/create'
  resources :gps
  resources :vehicles
  resources :places
  root 'welcome#index'
  # resources :trips do
  #   resources :stops
  # end
end
