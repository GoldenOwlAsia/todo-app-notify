Rails.application.routes.draw do
  resources :notification, only: [:create, :destroy] do
    get :fetch, on: :member
    post :notify, on: :member
    post :notify_all, on: :collection
  end
end
