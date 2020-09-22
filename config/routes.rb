Rails.application.routes.draw do
  devise_for :users
  # get 'items/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "items#index"
# root to: 'orders#index'
resources :uesrs, only: [:index, :new, :create,:delete, :show]
resources :items do
resources :orders, only: [:create, :index, :new]
  end
end
