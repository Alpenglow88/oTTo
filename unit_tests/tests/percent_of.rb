# frozen_string_literal: true

# Unit test module for percent_of function
module PercentOf
  # Valid percent of large...
  def valid_percent_of_large
    50.percent_of(5000)
  end

  # Valid percent of small...
  def valid_percent_of_small
    10.percent_of(20)
  end

  # Null percent of...
  def null_percent_of
    percent_of
  end
end
