Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles
  resources :categories, only: [:index, :show]
  mount Attachinary::Engine => "/attachinary"
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
end
