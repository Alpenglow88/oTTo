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

require './pages/home_page'

# change default driver between registered drivers listed below
Capybara.configure do |config|
  config.default_driver = :headless_chrome
  config.default_max_wait_time = 5

  config.app_host = 'https://google.com'
  config.ignore_hidden_elements = false
end

SitePrism.configure do |config|
  config.use_implicit_waits = false
end

Capybara.register_driver :selenium_safari do |app|
  Capybara::Selenium::Driver.new(app, browser: :safari)
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless disable-gpu] }
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
end

#########################################################
## Code added for extra driver if not suported by Selenium

# Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, browser: browser)
# end

# private

# def browser
#  @browser ||= ENV.fetch('browser', 'chrome' ).to_sym
# end
