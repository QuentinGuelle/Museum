Rails.application.routes.draw do
  resources :rblackandwhites
  resources :rarchitectures
  resources :architectures
  resources :blackandwhites
  resources :exhibitions
  resources :pictures
  root to: "rblackandwhites#index"
  get "/rblackandwhites", to: "rblackandwhites#index"
  get "/rarchitectures", to: "rarchitectures#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
