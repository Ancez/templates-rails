Templates::Engine.routes.draw do
  root 'templates#index'
  resources :templates, only: [:index, :show]
end
