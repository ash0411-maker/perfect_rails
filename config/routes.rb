Rails.application.routes.draw do
  resources :users
  resources :books
  resources :publishers
  resource :profile, only: %i{show edit update}
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
