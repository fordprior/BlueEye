Rails.application.routes.draw do
  resources :payloads
  root to: 'home#index'
end
