Rails.application.routes.draw do
  root 'blogs#index'
  get  "blogs" => "blogs#index"
end
