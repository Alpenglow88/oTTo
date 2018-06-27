
When('I navigate to the home page') do
  visit 'https://google.co.uk'
end

Then('I am on the home page') do
  expect(@player).to have_content
end

Then('the main_logo is visible') do
  expect(@player). to have_main_logo
end

#Then('the search_entry_field is visible') do
#  expect(@player). to have_search_entry_field
#end