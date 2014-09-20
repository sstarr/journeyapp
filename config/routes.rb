Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get  '/journeys',     to: 'journey_entries#index'
  get  '/journeys/new', to: 'journey_entries#new'
  post '/journeys',     to: 'journey_entries#create'
end
