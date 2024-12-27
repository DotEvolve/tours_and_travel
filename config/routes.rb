Rails.application.routes.draw do
  root "home#index"
  get "destinations", to: "home#destinations"
  get "search_flights", to: "home#search_flights"
  # get "show_flights", to: "home#show_flights"
end
