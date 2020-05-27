Rails.application.routes.draw do
  resources :homepage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homepage#index"
end
