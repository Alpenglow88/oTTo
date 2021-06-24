# frozen_string_literal: true

# Unit test module for data test id creation
module PercentDivideToFloat
  # Valid percent_divide_to_float - 75%
  def valid_percent_divide_to_float75
    percent_divide_to_float_helper(75)
  end

  # Valid percent_divide_to_float - 100%
  def valid_percent_divide_to_float100
    percent_divide_to_float_helper(100)
  end

  # Valid percent_divide_to_float - 1%
  def valid_percent_divide_to_float1
    percent_divide_to_float_helper(1)
  end

  # Invalid percent_divide_to_float - -10%
  def invalid_percent_divide_to_float_m10
    percent_divide_to_float_helper(-10)
  end

  # NULL percent_divide_to_float
  def null_percent_divide_to_float
    percent_divide_to_float_helper
  end
end
