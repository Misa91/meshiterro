Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users # deviseを使用する際、URLとしてusersを含む

  resources :post_images, only: [:new, :create, :index, :show]

  get 'homes/about', as: 'about'
end
