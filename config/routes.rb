Rails.application.routes.draw do

root to: "home#index"
resources :timecards do
  resources :days
  end

end
