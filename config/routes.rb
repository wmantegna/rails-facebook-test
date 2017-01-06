Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  # Custom Update Password
  resource :user, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end


  resources :products
  root 'products#index'
end
