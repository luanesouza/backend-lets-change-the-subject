Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :questions, only: [:index, :show]
      resources :seen_questions, only: [:index, :show, :create]
      resources :question_categories, only: [:index, :show]
      resources :categories, param: :name, only: [:index, :show]
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      get "/user_is_authed", to: "auth#user_is_authed"
    end
  end
end

