# frozen_string_literal: true

require 'json'

# Unit test files
require './unit_tests/tests/create_data_test_id.rb'
require './unit_tests/tests/percent_of.rb'
require './unit_tests/tests/percent_divide_to_float.rb'
require './unit_tests/tests/total_time_split.rb'
require './unit_tests/tests/live_label_language.rb'
require './unit_tests/tests/live_profile_variations.rb'
require './unit_tests/tests/video_profile_finder.rb'
require './unit_tests/tests/active_dc.rb'
require './unit_tests/tests/metric_value_comparison.rb'
require './unit_tests/tests/average_time_value_comparison.rb'

# Files under test
require './lib/utils.rb'

# Modules
include Utils
include LanguageUtils
include VideoAnalyticsUtils
include AnalyticsUtils
include MetricUtils
