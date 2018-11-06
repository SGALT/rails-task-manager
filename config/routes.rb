Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks
  post 'tasks' => 'tasks#create'
  get 'tasks/new' => 'tasks#new', as: :new_task
  get '/tasks/:id' => 'tasks#show', as: :task
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit_task
  patch 'tasks/:id' => 'tasks#update'
  delete 'tasks/:id' => 'tasks#destroy'
end
