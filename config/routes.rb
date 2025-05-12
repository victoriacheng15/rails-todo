Rails.application.routes.draw do
  root "home#index"
  get "home_json", to: "home#json"
end
