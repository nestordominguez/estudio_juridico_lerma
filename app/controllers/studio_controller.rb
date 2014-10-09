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
    def set_pagina
    	@show = Pagina.find_by_seccion(select_option)
    end
    def options
    	pagina = Pagina.all
    	option = []
    	pagina.each {|pag| option << pag.seccion }
    	option
    end
    def select_option
    	options.select {|option| option == self.method().to_s.split("#").last.split(">")}
    end
end
