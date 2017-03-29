Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    get :autocomplete_article_title, :on => :collection
  end
  resources :categories, only: [:index, :show]
  mount Attachinary::Engine => "/attachinary"
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
end
