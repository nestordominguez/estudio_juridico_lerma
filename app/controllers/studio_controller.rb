class StudioController < ApplicationController
	skip_before_action :authenticate_user!
	def estudio
		@show = set_pagina("Estudio")
	end

	def staff
		@show = set_pagina("Staff")
	end

	def areas
		@show = set_pagina("Area")
	end

	def publicaciones
		@show = set_pagina("Publicacion")
	end

	def links
		@show = set_pagina("Link")
	end
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagina(option)
    	Pagina.all.select {|pagina| pagina.seccion == option}.last
    end
end
