Rails.application.routes.draw do
  resources :shoppers
  resources :customers
  resources :orders, only: [:edit, :update, :destroy]


  get "/customers/:id/order", to: "orders#place_order", as: "customer_order"
  get "/", to: "application#home", as: "home" 
  get "/about", to: "application#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
