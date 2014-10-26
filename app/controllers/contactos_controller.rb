class ContactosController < ApplicationController
  before_action :set_contacto, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:new, :create]
  before_action :check_abogado, only: [ :index, :show, :destroy]

  # GET /contactos
  # GET /contactos.json
  def index
    @contactos = Contacto.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    #@contactos = Contacto.where(:leido).paginate(:page => params[:page]).order('created_at DESC')    
  end

  # GET /contactos/1
  # GET /contactos/1.json
  def show
    @contacto.leido = "Si"
    @contacto.save
  end

  # GET /contactos/new
  def new
    @contacto = Contacto.new
  end

  # POST /contactos
  # POST /contactos.json
  def create
    @contacto = Contacto.new(contacto_params)

    respond_to do |format|
      if @contacto.save
        format.html { redirect_to new_contacto_path, notice: 'Su comentario fue enviado correctamente.' }
        format.json { render action: 'show', status: :created, location: @contacto }
      else
        format.html { render action: 'new' }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactos/1
  # DELETE /contactos/1.json
  def destroy
    @contacto.destroy
    respond_to do |format|
      format.html { redirect_to contactos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacto_params
      params.require(:contacto).permit(:name, :phone, :email, :comentarios)
    end
end
