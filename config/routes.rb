Rails.application.routes.draw do

  resources :blogs do
    collection do
      post :confirm
    end
  end

  root 'tops#index'
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

end
