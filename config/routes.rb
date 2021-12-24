Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  # get '', to: redirect("/#{I18n.locale}")
  scope "/:locale" do
    root "users#index"
  end
  resources :messages
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
