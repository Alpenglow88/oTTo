When('I navigate to the home page') do
  visit 'https://google.co.uk'
end

Then('I am on the home page') do
  expect(@home).to have_content
end

Then('the main_logo is visible') do
  expect(@home). to have_main_logo
end

Then('the search_entry_field is visible') do
  expect(@home). to have_search_entry_field
end

Then('the search_btn is visible') do
  expect(@home). to have_search_btn
end

Then('the feel_lucky_btn is visible') do
  expect(@home). to have_feel_lucky_btn
end
