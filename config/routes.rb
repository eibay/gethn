Rails.application.routes.draw do
  resources :articles
  # match "/articles/:id()" , "articles#remove", via: [:put, :patch]

  # match '/articles/:id', to: 'articles#remove', via: [:put, :patch]
  root "articles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
