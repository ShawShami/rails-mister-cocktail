Rails.application.routes.draw do
  get 'doses/new'
  #cocktail
  get 'cocktails/new', to: 'cocktails#new'
  post 'cocktails', to: 'cocktails#create'
  get 'cocktails/index', to: 'cocktails#index'
  get 'cocktails/:id', to: 'cocktails#show', as: "cocktail"
  #dose
  post 'doses', to: 'doses#create'
  get 'doses/new', to: 'doses#new', as: "new_dose"
end
