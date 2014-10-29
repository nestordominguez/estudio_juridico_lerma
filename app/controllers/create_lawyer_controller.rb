class CreateLawyerController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  before_action :check_abogado
  def index
    @admins = User.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      unless @admin.superuser
        if @admin.update(lawyer_params)
          format.html { redirect_to @admin, notice: "El usuario #{@admin.email}
            se actualizo correctamente"}
          format.json { head :no_content }
        else
          format.html { redirect_to edit_user_path}
        end
      end
      format.html { redirect_to edit_user_path, notice: "Al usuario #{@admin.email}
       no se le puede quitar el atributo abogado"}
      messages
    end
  end

  def destroy
    @admin.destroy
    messages
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = User.find(params[:id])
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def lawyer_params
      params.require(:user).permit(:abogado)
    end

    def messages
      @admin.errors.full_messages.each do |msg|
        flash[:notice] = msg
      end
    end

end
