class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable


	## RELACIONAMENTOS
	has_many :noticias
	has_many :permissions
	has_many :roles, :through => :permissions
	has_one  :profile, :dependent => :destroy, :inverse_of => :user
	accepts_nested_attributes_for :profile, :allow_destroy => true

	# INICIALIZAÇÃO RELACIONAMENTO
	after_initialize do
		self.profile ||= self.build_profile()
	end


  	# DECLARATIVE AUTHORIZATION
	def role_symbols
		(roles || []).map{|r| r.name.underscore.to_sym}
	end	


end
