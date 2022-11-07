Rails.application.routes.draw do
  root "dinopost#index"

  get '/dinopost', to: "dinopost#index"
end
