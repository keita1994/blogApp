Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  get  "blogs"       =>  "blogs#index"
  get  "blogs/new"   =>  "blogs#new"
  post  "blogs"      =>  "blogs#create"
  get  "blogs/:id"   =>  "blogs#show"
  get  "users/:id"    =>  "users#show"
end
