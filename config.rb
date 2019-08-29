# frozen_string_literal: true

DRIVER = ENV['DRIVER'] ? ENV['DRIVER'].to_sym : :selenium_chrome
OPTIONS = ENV['OPTIONS'] ? ENV['OPTIONS'].to_str : nil
HOST = ENV['HOST'] ? ENV['HOST'].to_str : nil
LOGS = ENV['LOGS'] ? ENV['LOGS'].to_str : nil
ENVIRONMENT = ENV['ENVIRONMENT'] ? ENV['ENVIRONMENT'].to_str : 'Testing'

USERNAME = ENV['USERNAME'] ? ENV['USERNAME'].to_str : nil
PASSWORD = ENV['PASSWORD'] ? ENV['PASSWORD'].to_str : nil

OUTPUT_FILE = ENV['OUTPUT_FILE'] ? ENV['OUTPUT_FILE'].to_str : 'testreport'
OUTPUT_FILE_TITLE = ENV['OUTPUT_FILE_TITLE'] ? ENV['OUTPUT_FILE_TITLE'].to_str : 'Test Report'

RERUN_OUTPUT_FILE = ENV['RERUN_OUTPUT_FILE'] ? ENV['RERUN_OUTPUT_FILE'].to_str : 'reruntestreport'
RERUN_OUTPUT_FILE_TITLE = ENV['RERUN_OUTPUT_FILE_TITLE'] ? ENV['RERUN_OUTPUT_FILE_TITLE'].to_str : 'Rerun Test Report'
