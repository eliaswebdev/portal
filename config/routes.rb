Rails.application.routes.draw do

  resources :noticias
  resources :marcadores
  resources :editorias
  resources :usuarios
  
  root 'paginas#principal'
  
end
