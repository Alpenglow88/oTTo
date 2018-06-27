unless ENV['CI']
  require 'simplecov'
  require 'dotenv'
  SimpleCov.start
  Dotenv.load('.env')
end

require 'capybara/cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'

$LOAD_PATH << './lib'
$LOAD_PATH << './pages'

require './pages/player_page'


Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 5
#  config.app_host = 'file://' + File.dirname(__FILE__) + '/../../test_site/html'
  config.app_host = "http://ampdemo.azureedge.net/azuremediaplayer.html"
  config.ignore_hidden_elements = false
end

SitePrism.configure do |config|
  config.use_implicit_waits = false
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: browser)
end

private

def browser
  @browser ||= ENV.fetch('browser', 'chrome').to_sym
end