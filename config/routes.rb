Rails.application.routes.draw do
  get 'items/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "items#index"
resources :donations, only: [:index, :new, :create,:delete]
end
