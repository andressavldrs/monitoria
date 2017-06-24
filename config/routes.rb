Rails.application.routes.draw do

  resources :home
  root :to => redirect('home')

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

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
