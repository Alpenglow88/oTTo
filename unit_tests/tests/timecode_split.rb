# frozen_string_literal: true

# Unit test module for timecode split util
module TimecodeSplit
  # Valid timecode split to integer - 6 digit
  def valid_timecode_6_digit
    timecode = '07:12:56'
    timecode.timecode_split_helper
  end

  # Valid timecode split to integer - 4 digit
  def valid_timecode_4_digit
    timecode = '12:56'
    timecode.timecode_split_helper
  end

  # Valid timecode split to integer - 2 digit
  def valid_timecode_2_digit
    timecode = '56'
    timecode.timecode_split_helper
  end

  # Invalid - no variable timecode
  def invalid_timecode_no_timecode_variable
    timecode.timecode_split_helper
  end

  # Invalid - empty variable timecode
  def invalid_timecode_no_timecode_variable_empty
    timecode = ''
    timecode.timecode_split_helper
  end
end
