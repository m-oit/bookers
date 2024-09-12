Rails.application.routes.draw do
  get 'books/new'
  get 'books/show'
  get 'books/edit'
  get 'books' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'boooks#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
