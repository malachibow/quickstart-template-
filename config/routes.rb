Rails.application.routes.draw do
  resources :comments
  post 'posts/favorite/:id', to: 'posts#favorite', as: 'favorite'
  resources :posts
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
