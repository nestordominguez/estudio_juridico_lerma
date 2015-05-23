EstudioJuridicoLerma::Application.routes.draw do

  # get "admins",                 to: 'create_lawyer#index',    as: 'users'
  # get "admins/:id",             to: 'create_lawyer#show',     as: 'user'
  # get "admins/:id/edit",        to: 'create_lawyer#edit',     as: 'edit_user'
  # put "admins/:id",             to: 'create_lawyer#update',   as: ''
  # match 'admins/:id',           to: 'create_lawyer#update',   via: [:patch]
  # delete "admins/:id",          to: 'create_lawyer#destroy',  as: ''

  # devise_for :users
  # resources :contactos
  # resources :paginas

  # get   '/studio/staff',          to: 'studio#staff',           as: 'staff'
  # get   '/studio/areas',          to: 'studio#areas',           as: 'areas'
  # get   '/studio/publicaciones',  to: 'studio#publicaciones',   as: 'publicaciones'
  # get   '/studio/links',          to: 'studio#links',           as: 'links'
  # get   '/studio/estudio',        to: 'studio#estudio',         as: 'estudio'

  # root 'studio#estudio'
  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :contactos
    end
  end
end
