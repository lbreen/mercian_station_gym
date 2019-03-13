Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :competitions
    resources :events

    root to: "users#index"
  end

  devise_for :users

  root to: 'pages#home'

  get '/apts', to: 'pages#apts', as: :apts

  resources :competitions, only: [:index, :show]
end
