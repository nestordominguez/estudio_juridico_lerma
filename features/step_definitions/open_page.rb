
Given(/^I open estudio page$/) do
	visit root_path
end

When(/^they is open$/) do
  expect have_content
end

Then(/^they should see a title and a description$/) do
  Pagina.create(seccion: "Estudio", titulo: "Estudio", descripcion: "Hola")
  @show = Pagina.find_by_seccion("Estudio")
  expect have_content("Estudio Staff Areas Publicaciones Links Clientes Estudio juridico Antonela Lerma sección: estudio")
  expect have_descripcion("Hola")
end
