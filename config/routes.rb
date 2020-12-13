Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/home/choose_category/:id', to: 'home#choose_category'
  get '/home/choose_category/:id/choose_product/:id', to: 'home#choose_product'
end
