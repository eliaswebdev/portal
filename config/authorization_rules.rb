authorization do
	role :admin do
		has_permission_on [:admin_users], :to => [:manage]
	end

	role :editor do
		has_permission_on [:admin_editorias], :to => [:read]
		has_permission_on [:admin_noticias], :to => [:manage]
		has_permission_on [:admin_marcadores], :to => [:manage]
	end

	role :client do
		has_permission_on [:admin_marcadores], :to => [:manage]
	end

end

privileges do
    privilege :manage, :includes => [:index, :show, :new, :create, :edit, :update, :destroy]
    privilege :read,   :includes => [:index, :show]
    privilege :create, :includes => [:new]
    privilege :update, :includes => [:edit]
    privilege :delete, :includes => [:destroy]
end