Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  
  get '/projects' => 'projects#index'
  get '/projects/new' => 'projects#new'
  get '/projects/:id' => 'projects#show', as: :project
  post '/projects' => 'projects#create'
  delete '/projects/:id' => 'projects#destroy'

  get '/projects/:id/new' => 'tasks#new'
  get '/tasks/:id' => 'tasks#show', as: :task
  get '/tasks/:id/edit' => 'tasks#edit', as: :edit_task
  patch '/tasks/:id' => 'tasks#update'
  post '/tasks' => 'tasks#create'
  delete '/tasks/:id' => 'tasks#destroy'

  resources :users
  # get '/users' => 'users#index'
  # get '/users/:id/edit' => 'users#edit', as: :edit_user
  # patch '/users/:id' => 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
