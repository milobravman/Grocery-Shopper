Rails.application.routes.draw do
  resources :shoppers
  resources :customers
  resources :orders, only: [:edit, :update, :destroy, :index]


  patch "/shoppers/:id/l", to: "shoppers#l_order", as: "l_order"
  get "/customers/:id/order", to: "customers#place_order", as: "customer_order"
  get "/", to: "application#home", as: "home" 
  get "/about", to: "application#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
