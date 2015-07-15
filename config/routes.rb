Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors
  root to: 'visitors#new'
end
