# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include TotalTimeSplit

begin
  describe('Valid timecode split with 4 characters') do
    it('/outputs timecode as seconds') do
      expect(TotalTimeSplit.valid_total_time_split_4_char).to eq(83)
    end
  end
  describe('Valid timecode split with 6 characters') do
    it('/outputs timecode as seconds') do
      expect(TotalTimeSplit.valid_total_time_split_6_char).to eq(5025)
    end
  end

  describe('Null argument provided') do
    it('/raises argument error') do
      expect { raise TotalTimeSplit.null_total_time_split }.to raise_error(ArgumentError)
    end
  end

  describe('Incorrect syntax') do
    it('/raises syntax error') do
      expect { raise TotalTimeSplit.invalid_syntax_total_time_split }.to raise_error(SyntaxError)
    end
  end
end
