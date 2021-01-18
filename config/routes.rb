Rails.application.routes.draw do
  resources :groups
  resources :comments
  post 'posts/favorite/:id', to: 'posts#favorite', as: 'favorite'
  resources :posts
  root 'pages#home'
  get 'explore', to: "pages#explore"
  get 'notifications', to: "pages#notifications"
  get 'profile/:id', to: "pages#profile", as: "profile"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
