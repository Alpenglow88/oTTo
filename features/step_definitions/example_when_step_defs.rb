# frozen_string_literal: true

# This step definition uses the defined browser driver to find the search bar on Google.com and enter a defined string from the feature file
When('I enter {string} into the search bar') do |string|
  expect(test_divs).to have_google_search_bar
  test_divs.google_search_bar.click
  test_divs.google_search_bar.send_keys string
end

# This step definition uses the defined browser driver to click the search bar present on Google.com
When('I send the enter key to search Google') do
  test_divs.google_search_bar.send_keys :enter
end
