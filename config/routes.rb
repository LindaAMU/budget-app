Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :accounts, except: %i[show]
  resources :transactions, except: %i[show]
  resources :categories, except: %i[show]
end
