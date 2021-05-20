Rails.application.routes.draw do
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'
  post '/webhooks/orders_create', :to => 'custom_webhooks#orders_create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
