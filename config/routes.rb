Rails.application.routes.draw do
  root "dinoposts#index"

  resources :dinoposts do
    resources :comments
  end
end
