Rails.application.routes.draw do
  root to: 'pages#home'
  resources :articles
  resources :categories, only: [:index, :show]
  mount Attachinary::Engine => "/attachinary"
end
