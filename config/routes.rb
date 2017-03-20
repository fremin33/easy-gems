Rails.application.routes.draw do
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
end
