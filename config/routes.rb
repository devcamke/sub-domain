Rails.application.routes.draw do
  resources :posts
  resources :accounts
  
  scope module: "accounts" do
    root to: "posts#index"
  end
  root "accounts#index"
end
