# frozen_string_literal: true

# Unit test module for data test id creation
module CreateDataTestId
  # Valid data test id creation
  def valid_data_test_id
    create_data_test_id('passing')
  end

  # Invalid data test id creation
  def invalid_data_test_id
    create_data_test_id('failing')
  end

  # Null data test creation
  def null_data_test_id
    create_data_test_id
  end
end
