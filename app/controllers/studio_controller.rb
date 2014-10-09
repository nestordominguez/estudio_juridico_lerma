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
    	@show = Pagina.find_by_seccion(select_option)
    end
    def options
    	pagina = Pagina.all
    	option = []
    	pagina.each {|pag| option << pag.seccion }
    	option
    end
    def select_option
    	options.select do 
    		|option| StudioController.instance_methods(false).each do
    			|method| method.to_s == option
    		end
    	end
    end
end
