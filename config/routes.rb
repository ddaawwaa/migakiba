Rails.application.routes.draw do
  devise_for :users
  root "spots#index"
  resources :spots

end
