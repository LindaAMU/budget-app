Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :accounts, except: %i[show] do
    resources :transactions, except: %i[show]
  end

  resources :categories, except: %i[show]
end
