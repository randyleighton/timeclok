Rails.application.routes.draw do

root to: "home#index"
resources :users
resources :timecards do
  resources :days
  end
resources :days

get "/log-in" => "sessions#new"
post "/log-in" => "sessions#create"
get "/log-out" => "sessions#destroy", as: :log_out
resources :sessions, only: [:new, :create, :destroy]

end
