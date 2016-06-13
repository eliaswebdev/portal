class AdminController < ApplicationController
	layout 'admin'	
	
	## BARREIRA DO DEVISE
	before_action :authenticate_user!
	
	## BARREIRA DO DECLARATIVE AUTHORIZATION
	filter_access_to :all


	# Filtro do declarative authorization para todos os controllers da parte ADMIN
	before_action { |c| Authorization.current_user = c.current_user }

	#mensagem em caso de usuário não autorizado
	protected
		def permission_denied
			flash[:error] = t("declarative_authorization.permission_denied")
			redirect_to request.referer.present? ? :back : root_url
		end	  
end