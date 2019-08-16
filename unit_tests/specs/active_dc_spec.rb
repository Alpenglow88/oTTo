# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include ActiveDc

begin
  describe('Valid data centre A') do
    it('/outputs valid data centre A') do
      expect(ActiveDc.valid_dc_a).to eq('DC A')
    end
  end

  describe('Valid data centre B') do
    it('/outputs valid data centre B') do
      expect(ActiveDc.valid_dc_b).to eq('DC B')
    end
  end

  describe('Valid data centre 1') do
    it('/outputs valid data centre 1') do
      expect(ActiveDc.valid_dc_1).to eq('DC 1')
    end
  end

  describe('Valid data centre 2') do
    it('/outputs valid data centre 2') do
      expect(ActiveDc.valid_dc_2).to eq('DC 2')
    end
  end

  describe('Argument Error') do
    it('/raises argument error') do
      expect { raise ActiveDc.argument_error }.to raise_error(ArgumentError)
    end
  end
end
