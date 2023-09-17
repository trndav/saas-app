Rails.application.routes.draw do
  resources :user_projects
  resources :artifacts
  resources :projects
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  match "/plan/edit" => "tenants#edit", via: :get, as: :edit_plan
  match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan
end