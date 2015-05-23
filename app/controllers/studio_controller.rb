class StudioController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_pagina
	def estudio
	end

	def staff
	end

	def areas
	end

	def publicaciones
	end

	def links
	end

private
	def set_pagina
		@show = Pagina.find_by_seccion(params[:seccion])
    paramst = params[:seccion]
    paramst.to_json

      render paramst

	end
end
