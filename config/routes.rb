Rails.application.routes.draw do
  get 'books/new'
  get 'books' => 'books#index'
  get '/' => 'homes#top'
  resources :books
  
end