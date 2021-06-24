# frozen_string_literal: true

require 'report_builder'
require './config'
require 'date'

time = Time.now.getutc

ReportBuilder.configure do |config|
  config.json_path = 'testreport.json'
  config.report_path = "#{OUTPUT_FILE}_#{time}"
  config.report_types = [:html]
  config.report_tabs = %w[Overview Features Scenarios Errors]
  config.report_title = "#{OUTPUT_FILE_TITLE}_#{time}"
  config.compress_images = false
  config.additional_info = { 'Project name': 'UI_Automation', Platform: 'Player', 'Report generated': time }
end
ReportBuilder.build_report

ReportBuilder.configure do |config|
  config.json_path = 'retestreport.json'
  config.report_path = "#{RERUN_OUTPUT_FILE}_#{time}"
  config.report_types = [:html]
  config.report_tabs = %w[Overview Features Scenarios Errors]
  config.report_title = "#{RERUN_OUTPUT_FILE_TITLE}_#{time}"
  config.compress_images = false
  config.additional_info = { 'Project name': 'UI_Automation', Platform: 'Player', 'Report generated': time }
end
ReportBuilder.build_report if File.exist?('./retestreport.json')
