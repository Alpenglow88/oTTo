# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include CreateDataTestId

begin
  PASS = "[data-test-id~='passing']"

  describe('Valid Test ID Creation') do
    it('/outputs valid data test id') do
      expect(CreateDataTestId.valid_data_test_id).to eq(PASS)
    end
  end

  describe('Invalid Test ID Creation') do
    it('/outputs invalid data test id') do
      expect(CreateDataTestId.invalid_data_test_id).not_to eq(PASS)
    end
  end

  describe('Null Test ID Creation') do
    it('/raises argument error') do
      expect { raise CreateDataTestId.null_data_test_id }.to raise_error(ArgumentError)
    end
  end
end
