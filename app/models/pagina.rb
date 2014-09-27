class Pagina < ActiveRecord::Base
	validates :seccion, :inclusion => 
			{ 	:in => %w([Estudio Staff Area Publicacion Link), 
				:message => "%{value} disponible" }
end
