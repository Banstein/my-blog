Rails.application.routes.draw do
  get "/users/:user_id/posts", to: "posts#index"
  get "/user/:user_id/posts/:id", to: "posts#show"
  resources :users, only: [:index, :show]
end
