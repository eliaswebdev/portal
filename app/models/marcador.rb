class Marcador < ActiveRecord::Base
	## RELACIONAMENTOS
	has_and_belongs_to_many :noticias
end
