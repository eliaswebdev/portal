class Role < ActiveRecord::Base
	## RELACIONAMENTOS
	has_many :permissions
	has_many :users, :through => :permissions
end
