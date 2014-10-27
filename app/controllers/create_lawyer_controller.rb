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
      if @admin.update(lawyer_params)
        format.html { redirect_to @admin, notice: 'El usuario se actualizo
          correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def destroy

    begin
    @admin.destroy
    flash[:notice] = "Usuario #{@admin.email} eliminado"
    rescue Exception => e
    flash[:notice] = e.message
    end

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

end
