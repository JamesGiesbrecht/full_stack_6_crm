Rails.application.routes.draw do
  get "/", to: "customers#index", as: "index"

  get "customers/alphabetized", to: "customers#alphabetized", as: "alphabetized"

  get "customers/missing_email", to: "customers#missing_email", as: "missing_email" # search_path

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
