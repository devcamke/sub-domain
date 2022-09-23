require "contraints/subdomain_required"

Rails.application.routes.draw do
  
  constraints(SubdomainRequired) do
  scope module: "accounts" do
    root to: "posts#index"
    resources :posts
  end
end

  resources :posts
  resources :accounts
  root to: "accounts#index"
end
