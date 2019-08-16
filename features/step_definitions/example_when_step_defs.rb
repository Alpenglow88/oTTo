# frozen_string_literal: true

# This step definition takes a supplied integer from the feature file and show it in the console
When('I show the number {int} in the console') do |int|
  puts int
end

# This step definition uses the defined browser driver to open the web page Google.com
When('I open Google') do
  visit 'http://www.google.com'
end

# This step definition uses the defined browser driver to find the search bar on Google.com and enter a defined string from the feature file
When('I enter {string} into the search bar') do |string|
  expect(page).to have_google_search_bar
  click search field
  enter string
end

# This step definition uses the defined browser driver to click the search bar present on Google.com
When('I press the search button') do
  expect(page).to have_google_search_bar
  page.google_search_bar.click
end

