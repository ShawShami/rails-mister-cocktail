Rails.application.routes.draw do
  get 'cocktails/new', to: 'cocktails#new'
  post 'cocktails', to: 'cocktails#create'
  get 'cocktails/index', to: 'cocktails#index'
  # as: 'cocktails'
  get 'cocktails/:id', to: 'cocktails#show', as: "cocktail"
  # as: 'cocktail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
