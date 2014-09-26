Given(/^a user visits the home page$/) do
	visit root_path
end

When(/^they in home page$/) do
  pagina = Pagina.all
  
  expect(page).to have_content("Estudio juridico Antonela Lerma sección: estudio")
end
# Then /^I should see "(.*?)"$/ do |arg1|
#   page.should have_content(arg1)
# end

Then(/^they should see page estudio$/) do
  pending # express the regexp above with the code you wish you had
end
