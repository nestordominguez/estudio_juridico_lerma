json.array!(@paginas) do |pagina|
  json.extract! pagina, :id, :seccion, :titulo, :descripcion
  json.url pagina_url(pagina, format: :json)
end
