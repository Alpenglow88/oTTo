# frozen_string_literal: true

require 'json'

# Unit test files
require './unit_tests/tests/create_data_test_id'
require './unit_tests/tests/percent_of'
require './unit_tests/tests/percent_divide_to_float'
require './unit_tests/tests/total_time_split'
require './unit_tests/tests/language_detection'
require './unit_tests/tests/timecode_split'

# Files under test
require './lib/utils'

# Modules
include Utils
