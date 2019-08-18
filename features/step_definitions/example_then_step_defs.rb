# frozen_string_literal: true

# This step definition looks at the current page and verifies that there are search results from Google listed
Then('I get a list of the number search results found') do
  expect(page.title).to include('Google Search')
  expect(test_divs).to have_google_result_stats
  puts test_divs.google_result_stats.text
end

# This step definition looks at the current page and verifies that there are search results from Google listed
Then('I see the value {string} in the search bar') do |string|
  puts test_divs.google_search_bar.value
  expect(test_divs.google_search_bar.value).to eq(string)
end

Then('The page title is {string}') do |string|
  puts page.title
  expect(page.title).to eq(string)
end
