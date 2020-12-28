Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/choose_category/:id', to: 'home#choose_category'
  get '/choose_category/choose_product/:id', to: 'home#choose_product'
  get '/cart', to: 'home#cart'

end
