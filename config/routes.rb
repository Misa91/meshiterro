Rails.application.routes.draw do
  devise_for :users # deviseを使用する際、URLとしてusersを含む
  root to: "homes#top"
  get 'homes/about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
