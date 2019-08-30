# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include TimecodeSplit

begin
  describe('Valid timecode 6 digit') do
    it('/outputs valid integer conversion of 6 digit timecode') do
      expect(TimecodeSplit.valid_timecode_6_digit).to eq(25_976)
    end
  end

  describe('Valid timecode 6 digit') do
    it('/outputs valid integer conversion of 6 digit timecode') do
      expect(TimecodeSplit.valid_timecode_4_digit).to eq(776)
    end
  end

  describe('Valid timecode 6 digit') do
    it('/outputs valid integer conversion of 6 digit timecode') do
      expect(TimecodeSplit.valid_timecode_2_digit).to eq(56)
    end
  end

  describe('Incorrect method') do
    it('/raises NameError error') do
      expect { raise TimecodeSplit.invalid_timecode_no_timecode_variable }.to raise_error(NameError)
    end
  end

  describe('No Variable stored') do
    it('/raises Typeerror error') do
      expect { raise TimecodeSplit.invalid_timecode_no_timecode_variable_empty }.to raise_error(TypeError)
    end
  end
end
