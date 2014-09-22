class StudioController < ApplicationController
	skip_before_action :authenticate_user!
	def estudio
		@show = set_pagina.select {|pagina| pagina.seccion == "Estudio"}.last
	end

	def staff
		@show = set_pagina.select {|pagina| pagina.seccion == "Staff"}.last
	end

	def areas
		@show = set_pagina.select {|pagina| pagina.seccion == "Area"}.last
	end

	def publicaciones
		@show = set_pagina.select {|pagina| pagina.seccion == "Publicacion"}.last
	end

	def links
		@show = set_pagina.select {|pagina| pagina.seccion == "Link"}.last
	end
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagina
      Pagina.all
    end
end
