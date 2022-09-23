require '/contraints/subdomain_required'

Rails.application.routes.draw do
  
  constraints(SubDomainRequired) do
  scope module: "accounts" do
    root to: "posts#index", as: :account_root
    resources :posts
  end
end

  resources :posts
  resources :accounts
  root to: "accounts#index"
end
