Rails.application.routes.draw do
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get 'top' => 'book#top'
    resources :books

    # get 'books' => 'books#show', as: 'book'
    # get 'books' => 'books#edit', as: 'edit_book'
    # patch 'books/:id' => 'books#update', as: 'update_book'
    # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
