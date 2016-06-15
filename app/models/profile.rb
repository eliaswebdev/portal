class Profile < ActiveRecord::Base
	## RELACIONAMENTOS
	belongs_to :user

	## UPLOAD
	mount_uploader :avatar, ImagemUploader

	## VALIDATES
	validates :gender, :date_of_birth, presence: true

	## CONSTANT
	GENDER = [['Masculino', 'M'], ['Femino', 'F']]
end
