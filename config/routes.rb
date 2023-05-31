Rails.application.routes.draw do
  # get 'public_recipes/index'
  # get 'public_recipes/show'
  # get 'public_recipes/new'
  # get 'public_recipes/create'
  # get 'public_recipes/edit'
  # get 'public_recipes/update'
  # get 'public_recipes/destroy'
  # get 'shopping_lists/index'
  # get 'shopping_lists/show'
  # get 'shopping_lists/new'
  # get 'shopping_lists/create'
  # get 'shopping_lists/edit'
  # get 'shopping_lists/update'
  # get 'shopping_lists/destroy'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  # get 'recipes/index'
  # get 'recipes/show'
  # get 'recipes/new'
  # get 'recipes/create'
  # get 'recipes/edit'
  # get 'recipes/update'
  # get 'recipes/destroy'
  # get 'recipe_foods/index'
  # get 'recipe_foods/show'
  # get 'recipe_foods/new'
  # get 'recipe_foods/create'
  # get 'recipe_foods/edit'
  # get 'recipe_foods/update'
  # get 'recipe_foods/destroy'
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/create'
  # get 'foods/edit'
  # get 'foods/update'
  # get 'foods/destroy'
  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  
  resources :public_recipes, only: [:index]

  resources :shopping_lists, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
