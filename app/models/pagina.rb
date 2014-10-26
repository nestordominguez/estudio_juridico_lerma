class Pagina < ActiveRecord::Base
	OPTION = ["Estudio", "Staff", "Area", "Publicacion", "Link"]
	validates :seccion, :inclusion => 
			{ 	:in => OPTION, 
				:message => "no disponible" },
				:uniqueness => {:message => "ya creada"}
end
