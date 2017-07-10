Rails.application.routes.draw do

  resources :home
  root :to => redirect('/home')

 # root 'disciplinas#index'

  # devise_for :users
  # root :to => redirect('/sign_in')

  devise_for :views

  resources :selecionados
  root :to => redirect('/selecionados')
  
  resources :tipos
  root :to => redirect('/tipos')
  
  resources :disciplinas do
      collection { post :import }
  end
  root :to => redirect('/disciplinas')
  
  resources :ofertas
  root :to => redirect('/ofertas')
  
  resources :candidatos
  root :to => redirect('/candidatos')

  resources :selecionados do
    collection do
      post 'create_multiple'
    end
  end

  resources :selecionados do
    collection do
      post 'delete_multiple'
    end
  end

  devise_for :users, controllers: { registrations: "registrations" }

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
