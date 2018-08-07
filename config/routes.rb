Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Create
  get 'task/new', to: 'tasks#new', as: :new
  post '/tasks', to: 'tasks#create'
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # Destroy
  delete 'tasks/:id', to: 'tasks#destroy'
  # resources :tasks
end
