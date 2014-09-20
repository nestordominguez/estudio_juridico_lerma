EstudioJuridicoLerma::Application.routes.draw do

  resources :contactos

  get   '/studio/staff',          to: 'studio#staff',           as: 'staff'
  get   '/studio/areas',          to: 'studio#areas',           as: 'areas'
  get   '/studio/publicaciones',  to: 'studio#publicaciones',   as: 'publicaciones'
  get   '/studio/links',          to: 'studio#links',           as: 'links'
  root 'studio#estudio'

end
