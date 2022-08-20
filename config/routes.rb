Templates::Engine.routes.draw do
  root 'templates#index'
  get ':id', to: 'templates#show', as: :template, constraints: { id: /.*/ }
end
