Rails.application.routes.draw do
  root to: 'pages#home'

  get 'flip', to: 'pages#flip', as: :flip
  get 'collections', to: 'pages#collections', as: :collections
  get 'animations', to: 'pages#animations', as: :animations
  get 'images', to: 'pages#images', as: :images
  get 'sample404', to: 'pages#sample404', as: :sample404
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :desserts, only: [:index, :show, :create, :new, :edit, :update] do
    resources :mesures, only: [:create, :new]
  end
  resources :mesures, only: [:destroy]
end


