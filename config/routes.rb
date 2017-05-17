Rails.application.routes.draw do
  resources :blogs
  resources :animals
  root 'blogs#index'

  resources :lions, controller: 'animals', type: 'Lion'
	resources :meerkats, controller: 'animals', type: 'Meerkat' 
	resources :wild_boars, controller: 'animals', type: 'WildBoar'
end
