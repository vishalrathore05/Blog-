Rails.application.routes.draw do
  get 'greetings/hello'
  resources :order_receipts
  resources :orders
  resources :high_scores
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :purchases
  
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
