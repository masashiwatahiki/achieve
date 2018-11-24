Rails.application.routes.draw do
  resources :blogs do
    get 'blogs#index' do
    collection do
      post :confirm
    end
  end
end
