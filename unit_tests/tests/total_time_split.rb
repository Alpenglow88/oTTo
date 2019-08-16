# frozen_string_literal: true

# Unit test module for total_time_split_helper function
module TotalTimeSplit
  # Valid total time split with 4 characters
  def valid_total_time_split_4_char
    total_time_split_helper('01:23')
  end

  # Valid total time split with 6 characters
  def valid_total_time_split_6_char
    total_time_split_helper('01:23:45')
  end

  # Null total time split
  def null_total_time_split
    total_time_split_helper
  end

  # Invalid syntax total time split
  def invalid_syntax_total_time_split
    total_time_split_helper('123456')
  end

  # Invalid syntax total time split
  def invalid_syntax_non_int_total_time_split
    total_time_split_helper('a:a')
  end
end
