Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :blueprints do
    resources :stories
  end

  resource :profile, only: [:show]
end
