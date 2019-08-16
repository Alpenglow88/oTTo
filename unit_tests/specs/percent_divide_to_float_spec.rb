# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include PercentDivideToFloat

begin
  describe('Valid percent divided to float - 75%') do
    it('/outputs valid percent value') do
      expect(PercentDivideToFloat.valid_percent_divide_to_float_75).to eq(0.75)
    end
  end

  describe('Valid percent divided to float - 100%') do
    it('/outputs valid percent value') do
      expect(PercentDivideToFloat.valid_percent_divide_to_float_100).to eq(1)
    end
  end

  describe('Valid percent divided to float - 1%') do
    it('/outputs valid percent value') do
      expect(PercentDivideToFloat.valid_percent_divide_to_float_1).to eq(0.01)
    end
  end

  describe('Invalid percent divided to float - -10%') do
    it('/outputs raises range error') do
      expect { raise PercentDivideToFloat.invalid_percent_divide_to_float_m10 }.to raise_error(RangeError)
    end
  end

  describe('Null percent divide to float') do
    it('/raises argument error') do
      expect { raise PercentDivideToFloat.null_percent_divide_to_float }.to raise_error(ArgumentError)
    end
  end
end
