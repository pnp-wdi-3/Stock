Rails.application.routes.draw do
  get 'states/expired', to: "states#expired"
  get 'states/almost_exp', to: "states#almost_exp"
  get 'states/good', to: "states#good"
  devise_for :users , controllers: { registrations: "registrations" }
  root 'home#landing'
  resources :products
  
  patch 'products/:id/sell', to: "products#sale", as: 'sale'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
