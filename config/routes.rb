Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'
	devise_for :users

	resources :noticias, only: [:index, :show]


	namespace :admin do
		root 'noticias#index'
		resources :noticias
		resources :marcadores
		resources :editorias
		resources :users
	end

	root 'paginas#principal'
  
end
