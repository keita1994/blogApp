Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  get  "blogs"       =>  "blogs#index"
  get  "blogs/new"   =>  "blogs#new"
  post  "blogs"      =>  "blogs#create"
  get  "blogs/:id"   =>  "blogs#show"
  patch "blogs/:id"  =>  "blog#update"
  get "blogs/:id/edit"  =>  "blogs#edit"
  delete "blogs/:id"  =>  "blogs#destroy"
  get  "users/:id"    =>  "users#show"
end
