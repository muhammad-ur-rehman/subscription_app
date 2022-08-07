Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :subscriptions, only: [:index] do
    post :update_company, on: :collection
  end 

  root to: 'subscriptions#index'
end
