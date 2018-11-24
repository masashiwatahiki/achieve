Rails.application.routes.draw do
  get 'root/index'
  root to: 'root#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
