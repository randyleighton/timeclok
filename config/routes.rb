Rails.application.routes.draw do

root to: "home#index"
resources :users
resources :timecards do
  resources :days
  end
resources :days

# get "/log-in" => "sessions#new"
# post "/log-in" => "sessions#create"
# delete "/log-out" => "sessions#destroy"
resources :sessions, only: [:new, :create, :destroy]

end
