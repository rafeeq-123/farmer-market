Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get "welcome/index"
  get "farmers/weather"
  get "farmers/dollars"
  root "welcome#index"
  resources :farmers
end
