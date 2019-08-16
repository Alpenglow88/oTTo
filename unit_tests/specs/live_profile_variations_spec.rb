# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include LiveProfileVariations

begin
  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_profile_variation_over).to eq('1280x720')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_profile_variation_plus_one).to eq('1280x720')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_profile_variation).to eq('1280x720')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_mid_profile_variation_low).to eq('1280x720a')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_mid_profile_variation_mid).to eq('1280x720a')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_mid_profile_variation_high).to eq('1280x720a')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_low_profile_variation_low).to eq('1280x720b')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_low_profile_variation_mid).to eq('1280x720b')
    end
  end

  describe('Valid 1280x720 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.top_low_profile_variation_high).to eq('1280x720b')
    end
  end
  describe('Valid 960x540 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.mid_top_profile_variation_low).to eq('960x540')
    end
  end

  describe('Valid 960x540 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.mid_top_profile_variation_mid).to eq('960x540')
    end
  end

  describe('Valid 960x540 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.mid_top_profile_variation_high).to eq('960x540')
    end
  end

  describe('Valid 960x540 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.mid_low_profile_variation_low).to eq('960x540a')
    end
  end

  describe('Valid 960x540 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.mid_low_profile_variation_mid).to eq('960x540a')
    end
  end

  describe('Valid 960x540 Live profile variation') do
    it('/outputs correct profile resolution for hash') do
      expect(LiveProfileVariations.mid_low_profile_variation_high).to eq('960x540a')
    end
  end

  describe('Argument error 1280x720 Live profile variation') do
    it('/Argument error raised for 1280x720 resolution') do
      expect { raise LiveProfileVariations.invalid_high_profile_variation }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error 940x540 Live profile variation') do
    it('/Argument error raised for 940x540 resolution') do
      expect { raise LiveProfileVariations.invalid_mid_profile_variation }.to raise_error(ArgumentError)
    end
  end
end
