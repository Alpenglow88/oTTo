# frozen_string_literal: true

# require '/Users/iangoddard/Desktop/oTTo/features/pages/landing_page'

Given('I open the website {string}') do |string|
  visit string.to_s
  expect(current_url).to include(string)
  log("Opened #{string}")
end

Given('I open the host website') do
  visit HOST
  expect(current_url).to eq(HOST)
end

Given('I open the {string} page URL') do |string|
  LandingPage.load if string == 'landing'
  HomePage.load if string == 'home'
  expect(current_url).to eq(HOST) if string == 'landing'
  expect(current_url).to eq("#{HOST}index") if string == 'home'
end
