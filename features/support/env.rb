# frozen_string_literal: true

$LOAD_PATH << './'
$LOAD_PATH << './lib'
$LOAD_PATH << './pages'

require 'active_support'
require 'active_support/core_ext'

require 'base64'
require 'capybara'
require 'capybara/cucumber'
require 'capybara-extensions'
require 'capybara-screenshot/cucumber'
require 'cld'
require 'json'
require 'mail'
require 'net/http'
require 'require_all'
require 'rest-client'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'uri'
require 'webdrivers'

require './lib/constants.rb'
require './lib/helpers'
require './lib/site_prism'

require './features/support/browserstack'
require './features/support/browser_drivers'
require './features/support/multiple_assertions'
require './pages/player_test_page'
require './pages/sandbox_divs_page'
require './pages/test_divs_page'

include Helpers
include Utils
include EmailUtils
include SitePrism

unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'lib/site_prism/exceptions.rb'
    add_filter 'lib/site_prism/element_container.rb'
    add_filter 'lib/site_prism/element_checker.rb'
    add_filter 'lib/site_prism/loadable.rb'
    add_filter 'lib/site_prism/page.rb'
  end
end

SitePrism.configure do |config|
  config.use_implicit_waits = false
end

Webdrivers.cache_time = 86_400

# change default driver between registered drivers listed below
Capybara.configure do |config|
  Capybara.run_server = false
  config.default_driver = DRIVER
  config.javascript_driver = config.default_driver
  config.default_max_wait_time = 10
  config.ignore_hidden_elements = false
end

# Save screenshot on failure
Capybara::Screenshot.autosave_on_failure = true
Capybara::Screenshot.prune_strategy = :keep_last_run
After do |scenario|
  time = Time.now.getutc
  puts time
  add_screenshot if scenario.failed?
  # add_browser_logs if LOGS
end

# Commented out USE FOR DEBUG ONLY
# AfterStep do |scenario, step|
#   time = Time.now.getutc
#   errors = page.driver.browser.manage.logs.get(:browser)

#   if errors.present?
#     message = errors.map(&:message).join("\n\n")
#     puts message
#     File.open("console_logs_#{Date.today}_#{ENVIRONMENT}_#{DRIVER}.js", 'a') do |f|
#       f.write("#{time} \n #{scenario} \n #{step} \n #{message}\n")
#     end
#   end
# end
