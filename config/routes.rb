Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'

  get '/books' => 'books#index', as: 'books'
  get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show', as: 'book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'book'

end
