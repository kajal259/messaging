Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  resources :messages
  root "users#index"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
