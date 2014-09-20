EstudioJuridicoLerma::Application.routes.draw do

  get   '/studio/staff',          to: 'studio#staff',           as: 'staff'
  get   '/studio/areas',          to: 'studio#areas',           as: 'areas'
  get   '/studio/client',         to: 'studio#client',          as: 'client'
  get   '/studio/publicaciones',  to: 'studio#publicaciones',   as: 'publicaciones'
  get   '/studio/links',          to: 'studio#links',           as: 'links'
  root 'studio#estudio'

end
