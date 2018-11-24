Rails.application.routes.draw do
  get 'blogs#index' do
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
