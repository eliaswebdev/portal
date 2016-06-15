class Documento < ActiveRecord::Base
	## RELACIONAMENTOS
	belongs_to :noticia

	## UPLOAD
	mount_uploader :arquivo, DocumentoUploader	
end
