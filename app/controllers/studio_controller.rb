class StudioController < ApplicationController
	skip_before_action :authenticate_user!
	def estudio
		set_pagina("Estudio")
	end

	def staff
		set_pagina("Staff")
	end

	def areas
		set_pagina("Area")
	end

	def publicaciones
		set_pagina("Publicacion")
	end

	def links
		set_pagina("Link")
	end
	
	private
    def set_pagina(option)
    	@show = Pagina.all.select {|pagina| pagina.seccion == option}.last
    end
end
