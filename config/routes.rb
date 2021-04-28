Rails.application.routes.draw do
  root to: 'categories#index'
  resources :categories
  resources :selled_products
end
