Rails.application.routes.draw do
  root 'pages#index'
  resources :products, :orders, only: %i[show index]
  resource :cart, only: %i[show]
  resources :line_items, only: %i[create] # add to cart
  namespace :admin do
    resources :products, :carts
    resources :orders, :transactions, only: %i[show index]
  end
end
