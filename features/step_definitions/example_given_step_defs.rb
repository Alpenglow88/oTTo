# frozen_string_literal: true

Given('I open the website {string}') do |string|
  visit string.to_s
  expect(current_url) == string
end
