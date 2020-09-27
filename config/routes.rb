Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # list task
  get 'tasks', to: 'tasks#index'
  # create new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # view one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update taks
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
