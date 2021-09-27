Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #read all tasks
  get "tasks", to: "tasks#index"
  #create a task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  #read one tasks
  get "tasks/:id", to: "tasks#show", as: :show_task
  #update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id/edit", to: "tasks#update", as: :task
  #delete a task
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
end
