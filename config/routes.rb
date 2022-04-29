Rails.application.routes.draw do
  resources :places
  root 'welcome#index'
end
