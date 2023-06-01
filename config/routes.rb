Rails.application.routes.draw do
  devise_for :users
  resources :foods, only: %i[index new create destroy]

  resources :recipes, only: %i[index show new create destroy update] do
    resources :recipe_foods, only: %i[new create destroy edit update]
  end

  resources :public_recipes, only: [:index]

  resources :shopping_lists, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'foods#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
