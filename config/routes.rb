Rails.application.routes.draw do
  root to: 'articles#index'
  mount Attachinary::Engine => "/attachinary"
end
