Rails.application.routes.draw do
  resources :react_posts
  resources :hybrid_posts
  resources :rails_posts
  root 'rails_posts#index'# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
