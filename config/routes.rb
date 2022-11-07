Rails.application.routes.draw do
  root "dinoposts#index"

  get '/dinoposts', to: "dinoposts#index"
end
