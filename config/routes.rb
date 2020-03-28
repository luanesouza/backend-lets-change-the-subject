Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users#, only: [:index, :show]
      resources :questions, only: [:index, :show]
      resources :seen_questions, only: [:index, :show, :create]
      resources :question_categories, only: [:index, :show]
      resources :categories, only: [:index, :show]
    end
  end
end

