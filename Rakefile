# frozen_string_literal: true

require 'cucumber'
require 'cucumber/rake/task'
require 'rake'
require 'rspec/core/rake_task'
require 'rubygems'

report_builder = './lib/report_builder.rb'
rerun_report_builder = './lib/rerun_report_builder.rb'

task default: :test

desc 'Generation of HTML report from testreport.json'
task :report do
  puts 'report'
  ruby report_builder
end

desc 'Generation of HTML report from rerunreport.json'
task :rerun_report do
  ruby rerun_report_builder
end

desc 'Rerun Cucumber feature failures'
Cucumber::Rake::Task.new(:rerun) do |t|
  t.cucumber_opts = ["@rerun.txt --format pretty --expand --format json -o 'rerunreport.json'"]
end

desc 'Run Cucumber features and generate .json report using current ENV stated browser'
Cucumber::Rake::Task.new(:test) do |t|
  options = ENV['OPTIONS'] ? ENV['OPTIONS'].to_str : '-t @critical_path_controls'
  default = "--format pretty --expand --format json -o 'testreport.json' -f rerun --out rerun.txt"
  t.cucumber_opts = ["#{options} #{default}"]
end

desc 'RSpec run for initial unit tests'
RSpec::Core::RakeTask.new(:unit) do |t|
  t.rspec_opts = '--pattern unit_tests/specs/*.rb'
end
