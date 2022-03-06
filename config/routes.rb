Templates::Engine.routes.draw do
  resources :templates, only: [:index, :show]
end
