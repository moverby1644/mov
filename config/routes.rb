Rails.application.routes.draw do
  get '/mov/:id' => 'application#show'
  get '/new_mov' => 'application#new'
  get '/create_mov' => 'application#create'
  get '/mov/:id/edit' => 'application#edit'
  get '/update_mov/:id' => 'application#update'
  get '/mov/:id/destroy' => 'application#destroy'
  get '/mov' => 'application#index'
end