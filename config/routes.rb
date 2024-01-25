Rails.application.routes.draw do
  get 'analytics/index'
  resources :meals
  resources :workouts
  devise_for :users

  resources :days, :only => [:index, :show]

  
  resources :workout_types do
    resources :exercises
  end

  get 'favicon.ico', to: proc { [204, {}, []] }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
