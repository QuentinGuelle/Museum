Rails.application.routes.draw do
  resources :architectures
  resources :blackandwhites
  resources :exhibitions
  resources :pictures
  root to: "exhibitions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
