Rails.application.routes.draw do

  resources :selecionados
  resources :tipos
  resources :disciplinas
  resources :ofertas
  resources :candidatos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
