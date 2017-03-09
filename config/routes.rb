Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :blueprints do
    resources :stories
    resources :projects, only: [:create, :edit]
  end

  resource :profile, only: [:show]

  resources :projects
end
