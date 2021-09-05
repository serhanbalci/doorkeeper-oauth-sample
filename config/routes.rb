Rails.application.routes.draw do
  root "home#welcome"
  
  use_doorkeeper
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :books
    end
  end

  get "/auth/auth_server/callback", to: "auth#callback"
  post "/auth/auth_server/do_callback", to: "auth#do_callback"
end
