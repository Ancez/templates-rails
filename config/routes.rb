Templates::Engine.routes.draw do
  root 'templates/templates#index'
  get ':id', to: 'templates/templates#show', as: :template, constraints: { id: /.*/ }
end
