Rails.application.routes.draw do
  resources :teams
  resources :payloads
  root to: 'home#index'
end
