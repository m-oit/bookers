Rails.application.routes.draw do
  get 'books/new'
  get 'books' => 'books#index'
  get '/' => 'homes#top'
  post 'books' => 'books#create' 
  get 'books/:id' => 'books#show', as: :book
  get 'books/:id/edit' => 'books#edit',as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  
end