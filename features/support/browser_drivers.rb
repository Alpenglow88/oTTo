# frozen_string_literal: true

Capybara.register_driver :selenium_safari do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :safari
  )
end

Capybara.register_driver :selenium_firefox do |app|
  browser_options = ::Selenium::WebDriver::Firefox::Options.new
  browser_options.add_preference('media.eme.enabled', true)
  browser_options.add_preference('media.gmp-manager.updateEnabled', true)

  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: browser_options
  )
end

Capybara.register_driver :selenium_chrome do |app|
  browser_options = ::Selenium::WebDriver::Chrome::Options.new
  browser_options.add_argument('--autoplay-policy=no-user-gesture-required')
  browser_options.add_argument('--incognito')
  browser_options.add_argument('--no-sandbox')
  browser_options.add_argument('--disable-dev-shm-usage')
  browser_options.add_argument('--remote-debugging-port=9222')
  browser_options.add_option('excludeSwitches', ['enable-automation'])

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: browser_options
  )
end

Capybara.register_driver :headless_chrome do |app|
  browser_options = ::Selenium::WebDriver::Chrome::Options.new
  browser_options.add_argument('--autoplay-policy=no-user-gesture-required')
  browser_options.add_argument('--no-sandbox')
  browser_options.add_argument('--disable-dev-shm-usage')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: browser_options
  )
end

Capybara.register_driver :selenium_ie do |app|
  # ::Selenium::WebDriver.logger.level = "debug"
  options = ::Selenium::WebDriver::IE::Options.new
  options.require_window_focus = true
  Capybara::Selenium::Driver.new(
    app,
    browser: :ie,
    desired_capabilities: ::Selenium::WebDriver::Remote::Capabilities.ie,
    options: options
  )
end

Capybara.register_driver :selenium_edge do |app|
  # ::Selenium::WebDriver.logger.level = "debug"
  Capybara::Selenium::Driver.new(
    app,
    browser: :edge
  )
end

Capybara.register_driver :selenium_chrome_tv do |app|
  browser_options = ::Selenium::WebDriver::Chrome::Options.new
  browser_options.args << '--user-agent=faketvuseragent'
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: browser_options
  )
end
