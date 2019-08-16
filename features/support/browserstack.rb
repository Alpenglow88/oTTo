# frozen_string_literal: true

require 'yaml'
require 'selenium/webdriver'
require 'capybara/cucumber'
require 'browserstack/local'

# monkey patch to avoid reset sessions
class Capybara::Selenium::Driver < Capybara::Driver::Base
  # Stop reset
  def reset!
    @browser&.navigate&.to('about:blank')
  end
end

user = BROWSERSTACKUSER
key = BROWSERSTACKKEY
server = BROWSERSTACKSERVER

TASK_ID ||= (ENV['TASK_ID'] || 0).to_i
CONFIG_NAME ||= ENV['CONFIG_NAME'] || 'single'

CONFIG ||= YAML.safe_load(File.read(File.join(File.dirname(__FILE__), "../../browserstack_configs/#{CONFIG_NAME}.config.yml")))

Capybara.register_driver :browserstack do |app|
  @caps = CONFIG['common_caps'].merge(CONFIG['browser_caps'][TASK_ID])

  # Code to start browserstack local before start of test
  if @caps['browserstack.local'] && @caps['browserstack.local'].to_s == 'true'
    @bs_local = BrowserStack::Local.new
    bs_local_args = { key: key.to_s }
    @bs_local.start(bs_local_args)
  end

  Capybara::Selenium::Driver.new(app,
                                 browser: :remote,
                                 url: "http://#{user}:#{key}@#{server}/wd/hub",
                                 desired_capabilities: @caps)
end

# Code to stop browserstack local after end of test
at_exit do
  @bs_local&.stop
end
