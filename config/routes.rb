Rails.application.routes.draw do

  get 'index', to:'tasks#index'

  get 'tasks/new', to:'tasks#new', as: 'new'

  post 'tasks', to:'tasks#create', as: 'tasks'

  get 'tasks/:id', to:'tasks#show', as: 'task'

  get 'tasks/:id/edit', to:'tasks#edit', as:'edit'

  patch 'tasks/:id', to:'tasks#update', as: 'update'

  delete 'tasks/:id', to:'tasks#destroy', as: 'destroy'
end
