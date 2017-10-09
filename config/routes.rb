require 'api_version_constraint'

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 namespace :api, defaults:{format: :jason}, constrains: {sobdomain:'api'}, path:"/" do
  namespace :v1, path: "/", constrains: ApiVersionConstraint.new(version: 1, default: true) do
    resources :tasks
  end
 

 end 
end
