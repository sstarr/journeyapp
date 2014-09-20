Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get  '/journeys',     to: 'journey_entries#index'
  get  '/journeys/new', to: 'journey_entries#new'
  post '/journeys',     to: 'journey_entries#create'

  get 'my_co2_this_week', to: 'emissions#my_co2_this_week'
end
