Rails.application.routes.draw do
  get 'books/new'
  get 'books' => 'books#index'
  root to: 'homes#top'
  resources :books

end