Rails.application.routes.draw do
  root 'blogs#index'
end
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
