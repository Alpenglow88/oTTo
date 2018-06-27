
When('I navigate to the home page') do
  visit 'https://Google.com'
end

Then('I am on the home page') do
  expect(Player).to have_content
end

Then('the main_logo is visible') do
  expect(Player).to have_main_logo
end
