Rails.application.routes.draw do
  root "dinoposts#index"

  resources :dinoposts
end
