Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root "tweets#index"
  resources :tweets
  resources :users, only: [:edit, :update]
  resources :users ,only: [:show] do
    member do
      get :tweets
    end
   
  end

   resources :tweets  do
    resources :replies,only: [:index, :create]
   
  end
  

  namespace :admin do
    resources :tweets
    resources :users, only: [:index]
  end

  # 請依照專案指定規格來設定路由

end
