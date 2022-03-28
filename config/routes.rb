Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes do
    resources :recipe_ingredients
  end
end
