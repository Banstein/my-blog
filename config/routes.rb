Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user_id, only: [] do
    resources :user_posts, only: [:index, :show]
  end
  resources :users, only: [:index, :show]
end
