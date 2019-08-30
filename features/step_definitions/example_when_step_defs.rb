# frozen_string_literal: true

# This step definition takes a supplied integer from the feature file and shows it in the console - designed to show use of integers in features-  INFO PURPOSES ONLY
When('I show the number {int} in the console') do |int|
  puts int
end

# This step definition uses the defined browser driver to open the web page Google.com
When('I open Google') do
  visit 'http://www.google.com'
  puts 'Google opened'
end

# This step definition uses the defined browser driver to find the search bar on Google.com and enter a defined string from the feature file
When('I enter {string} into the search bar') do |string|
  expect(test_divs).to have_google_search_bar
  test_divs.google_search_bar.click
  test_divs.google_search_bar.send_keys string
end

# This step definition uses the defined browser driver to click the search bar present on Google.com
When('I search in Google') do
  test_divs.google_search_bar.send_keys :enter
end
