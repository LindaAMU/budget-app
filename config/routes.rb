Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:show], as: :profile
  resources :accounts, except: %i[show]
  resources :transactions, except: %i[show]
  resources :categories, except: %i[show]
end
