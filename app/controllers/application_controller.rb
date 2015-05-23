class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  #before_action :authenticate_user!

  private
  def check_abogado
  	unless current_user.abogado == true
  		flash[:error] = "No tiene acceso a esta seccion"
      	redirect_to new_user_registration_path # halts request cycle
  	end
  end
end
