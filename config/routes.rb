Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # As a user, I can list tasks
  # CRUD -> Read all tasks
  get '/tasks', to: 'tasks#index', as: :tasks # task_path

  # As a user, I can view the details of a task
  # CRUD -> Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # As a user, I can edit a task
  # CRUD -> Update one task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_tasks
  # place to send the new info
  patch '/tasks/:id', to: 'tasks#update'

  # As a user, I can remove a task
  # CRUD -> Delete one task
  delete '/tasks/:id', to: 'tasks#destroy'
end
