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
require 'capybara-screenshot/cucumber'
require 'base64'

$LOAD_PATH << './lib'
$LOAD_PATH << './pages'

require './pages/home_page'

# change default driver between registered drivers listed below
Capybara.configure do |config|
  Capybara.run_server = false
  config.default_driver = :headless_chrome
  config.default_max_wait_time = 5
  config.app_host = 'https://playback-web-player.testing.indaznlab.com/'
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

Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run
After do |scenario|
  if scenario.failed?
    add_screenshot
    add_browser_logs
  end
end
def add_screenshot
  file_path = 'screenshot.png'
  page.driver.browser.save_screenshot(file_path)
  image = open(file_path, 'rb', &:read)
  encoded_image = Base64.encode64(image)
  embed(encoded_image, 'image/png;base64', 'SCREENSHOT')
end

def add_browser_logs
  time_now = Time.now
  # Getting current URL
  current_url = Capybara.current_url.to_s
  # Gather browser logs
  logs = page.driver.browser.manage.logs.get(:browser).map { |line| [line.level, line.message] }
  embed(time_now.strftime('%Y-%m-%d-%H-%M-%S' + "\n") + ('Current URL: ' + current_url + "\n") + logs.join("\n"), 'text/plain', 'BROWSER ERROR')
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
