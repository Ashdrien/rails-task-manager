Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # read(all)
  get 'tasks', to: 'tasks#index'
  # create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
  # read
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
