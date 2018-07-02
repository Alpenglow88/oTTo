# frozen_string_literal: true

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

report_builder = './lib/report_builder.rb'

task default: :test

desc 'Generation of HTML report from testreport.json'
task :report do
  ruby report_builder
end

desc 'Run Cucumber features and generate .json report using current ENV stated browser'
Cucumber::Rake::Task.new(:test) do |t|
  t.cucumber_opts = "--format pretty --expand --format json -o 'testreport.json'"
end

namespace :setup do
  desc 'Setup for Chrome Testing'
  task :chrome do
    data = File.read('./features/support/env.rb')
    browser_config = data.gsub("config.default_driver = '<PLACEHOLDER>'", 'config.default_driver = :selenium_chrome')
    File.open('./features/support/env.rb', 'w') do |f|
      f.write(browser_config)
    end
      puts 'Environment Change to Chrome'
  end


  desc 'Setup for Firefox Testing'
  task :firefox do
    data = File.read('./features/support/env.rb')
    browser_config = data.gsub("config.default_driver = '<PLACEHOLDER>'", 'config.default_driver = :selenium_firefox')
    File.open('./features/support/env.rb', 'w') do |f|
      f.write(browser_config)
    end
    puts 'Environment set to Firefox'
  end

  desc 'Setup for Headless Chrome Testing'
  task :headless do
    data = File.read('./features/support/env.rb')
    browser_config = data.gsub("config.default_driver = '<PLACEHOLDER>'", 'config.default_driver = :headless_chrome')
    File.open('./features/support/env.rb', 'w') do |f|
      f.write(browser_config)
    end
    puts 'Environment set to headless Chrome'
  end

  desc 'Setup for Safari Testing'
  task :safari do
    data = File.read('./features/support/env.rb')
    browser_config = data.gsub("config.default_driver = '<PLACEHOLDER>'", 'config.default_driver = :selenium_safari')
    File.open('./features/support/env.rb', 'w') do |f|
      f.write(browser_config)
    end
    puts 'Environment set to Safari'
  end
end
