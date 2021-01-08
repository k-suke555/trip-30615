Rails.application.routes.draw do
  devise_for :users
  post "favorites/:plan_id/create" => "favorites#create"
  post "favorites/:plan_id/destroy" => "favorites#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "plans#index"
  resources :plans do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  get "users/:id/favorites" => "users#favorites"
end
