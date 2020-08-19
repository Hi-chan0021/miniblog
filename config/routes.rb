Rails.application.routes.draw do
  
  devise_for :users
  root 'blogs#index'
  
  get 'blogs' => 'blogs#index'
  get 'blogs/new' => 'blogs#new'
  get 'blogs/:id' => 'blogs#show'
  post 'blogs' => 'blogs#create'
  delete 'blogs/:id' => 'blogs#destroy'
  get 'blogs/:id/edit' => 'blogs#edit'
  patch 'blogs/:id' => 'blogs#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
