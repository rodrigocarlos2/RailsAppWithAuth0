Rails.application.routes.draw do

  get 'dashboard/show'

  get 'home/index'

  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"

  get "/logout" => "home#logout"

  resources :obrigations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
