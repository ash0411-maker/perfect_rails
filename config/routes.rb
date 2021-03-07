Rails.application.routes.draw do
  get 'books/show'
  get 'books/index'
  get 'books/new'
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
