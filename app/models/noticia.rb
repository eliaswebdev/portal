class Noticia < ActiveRecord::Base
	## RELACIONAMENTOS
	belongs_to :usuario
	belongs_to :editoria
	has_and_belongs_to_many :marcadores

	## VALIDAÇÕES
	validates :usuario_id, :editoria_id, presence: true
	# validates_presence_of :usuario_id, :editoria_id
end
