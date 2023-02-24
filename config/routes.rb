Rails.application.routes.draw do
  devise_for :users # deviseを使用する際、URLとしてusersを含む
  root to: "homes#top"
  get 'homes/about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
