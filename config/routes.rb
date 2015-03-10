Rails.application.routes.draw do

root to: "home#index"
resources :users
resources :timecards do
  resources :days
  end
resources :sessions, only: [:new, :create, :destroy]

end
