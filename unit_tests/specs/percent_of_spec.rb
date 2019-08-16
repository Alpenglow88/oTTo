# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include PercentOf

begin
  describe('Valid percent of value - Large') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_large).to eq('1.00%')
    end
  end

  describe('Valid percent of value - Large - format check no decimal') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_large).not_to eq('1%')
    end
  end

  describe('Valid percent of value - Large - format check one decimal') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_large).not_to eq('1.0%')
    end
  end

  describe('Valid percent of value - Large - format check no %') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_large).not_to eq('1.00')
    end
  end

  describe('Valid percent of value - Small') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_small).to eq('50.00%')
    end
  end

  describe('Valid percent of value - Small - format check no decimal') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_small).not_to eq('50%')
    end
  end

  describe('Valid percent of value - Small - format check one decimal') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_small).not_to eq('50.0%')
    end
  end

  describe('Valid percent of value - Small - format check no %') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_small).not_to eq('50.00')
    end
  end

  describe('Valid percent of value') do
    it('/raises argument error') do
      expect { raise PercentOf.null_percent_of }.to raise_error(ArgumentError)
    end
  end
end
