Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :projects
end
