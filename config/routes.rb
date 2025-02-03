Rails.application.routes.draw do
  resources :user_books
  resources :users
  root 'user_books#index'
# root "main#index"

  get "main/index"


  resources :tasks do
    member do
      get :delete
    end
  end



  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # get 'tasks/delete'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
