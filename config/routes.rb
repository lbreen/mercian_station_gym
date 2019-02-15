Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/competitions', to: 'pages#competitions', as: :competitions
  get '/apts', to: 'pages#apts', as: :apts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
