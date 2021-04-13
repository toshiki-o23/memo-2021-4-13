Rails.application.routes.draw do
  resources :memo
  root 'memo#index'
end
