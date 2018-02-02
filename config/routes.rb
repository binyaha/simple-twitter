Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :tweets
  resources :user
  root "tweets#index"

  namespace :admin do
    resources :tweets
    resources :users, only: [:index]
  end

  # 請依照專案指定規格來設定路由

end
