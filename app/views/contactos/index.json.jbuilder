json.array!(@contactos) do |contacto|
  json.extract! contacto, :id, :name, :phone, :email, :comentarios
  json.url contacto_url(contacto, format: :json)
end
