class Telefone < ActiveRecord::Base
	## RELACIONAMENTOS
	belongs_to :user

	## CONSTANTES
	TIPOS = ['TELEFONE FIXO', 'TIM', 'OI', 'VIVO', 'CLARO', 'AMAZÔNIA CELULAR', 'NEXTEL', 'OUTRA OPERADORA']  
end
