class Api::V1::ContactosController < Api::V1::CoreController
  def permitted_params
    params.permit(contacto: [:name, :email, :phone, :comment])
  end
end
