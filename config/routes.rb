Rails.application.routes.draw do
  root "home#index"
  get "home_json", to: "home#json"
  get "posts", to: "posts#index"
  get "posts_json", to: "posts#json"
end
