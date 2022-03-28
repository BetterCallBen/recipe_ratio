Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes do
    resources :ratios
    resources :recipe_ingredients, only: [:new, :create]
  end
end
