# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include VodVideoProfileFinder
include LinearVideoProfileFinder
include LiveVideoProfileFinder

begin
  describe('Valid 1920x1080 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_8).to eq('VoD Profile 8 (High)')
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_7).to eq('VoD Profile 7 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_6).to eq('VoD Profile 6 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_5_low).to eq('VoD Profile 5 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_5_mid).to eq('VoD Profile 5 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_5_top).to eq('VoD Profile 5 (Main)')
    end
  end

  describe('Valid 704x396 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_4).to eq('VoD Profile 4 (Baseline)')
    end
  end

  describe('Valid 512x288 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_3).to eq('VoD Profile 3 (Baseline)')
    end
  end

  describe('Valid 384x216 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_2).to eq('VoD Profile 2 (Baseline)')
    end
  end

  describe('Valid 192x108 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(VodVideoProfileFinder.vod_profile_1).to eq('VoD Profile 1 (Baseline)')
    end
  end

  describe('Argument error - bitrate') do
    it('/Argument error raised - bitrate missing') do
      expect { raise VodVideoProfileFinder.vod_argument_error_bitrate }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error - resolution') do
    it('/Argument error raised - resolution missing') do
      expect { raise VodVideoProfileFinder.vod_argument_error_resolution }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error - resoluton not supported') do
    it('/Argument error raised - resoluton not supported') do
      expect { raise VodVideoProfileFinder.vod_argument_error_resolution_nil }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error') do
    it('/Argument error raised') do
      expect { raise VodVideoProfileFinder.vod_argument_error }.to raise_error(ArgumentError)
    end
  end

  describe('Valid 1920x1080 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_7).to eq('Linear Profile 7 (High)')
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_6).to eq('Linear Profile 6 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_5).to eq('Linear Profile 5 (Main)')
    end
  end

  describe('Valid 704x396 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_4).to eq('Linear Profile 4 (Main)')
    end
  end

  describe('Valid 640x360 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_3).to eq('Linear Profile 3 (Baseline)')
    end
  end

  describe('Valid 384x216 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_2).to eq('Linear Profile 2 (Baseline)')
    end
  end

  describe('Valid 192x108 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LinearVideoProfileFinder.linear_profile_1).to eq('Linear Profile 1 (Baseline)')
    end
  end

  describe('Argument error') do
    it('/Argument error raised') do
      expect { raise LinearVideoProfileFinder.linear_argument_error }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error - resolution') do
    it('/Argument error raised - resolution missing') do
      expect { raise LinearVideoProfileFinder.linear_argument_error_resolution_null }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error - resoluton not supported') do
    it('/Argument error raised - resoluton not supported') do
      expect { raise LinearVideoProfileFinder.linear_argument_error_resolution_nil }.to raise_error(ArgumentError)
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_8_on).to eq('Live Profile 8 (High)')
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_8_over).to eq('Live Profile 8 (High)')
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_7_low).to eq('Live Profile 7 (High)')
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_7_mid).to eq('Live Profile 7 (High)')
    end
  end

  describe('Valid 1280x720 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_7_top).to eq('Live Profile 7 (High)')
    end
  end

  describe('Valid 961280x7200x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_6_low).to eq('Live Profile 6 (Main)')
    end
  end

  describe('Valid 961280x7200x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_6_mid).to eq('Live Profile 6 (Main)')
    end
  end

  describe('Valid 961280x7200x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_6_top).to eq('Live Profile 6 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_5_low).to eq('Live Profile 5 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_5_mid).to eq('Live Profile 5 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_5_top).to eq('Live Profile 5 (Main)')
    end
  end
  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_4_low).to eq('Live Profile 4 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_4_mid).to eq('Live Profile 4 (Main)')
    end
  end

  describe('Valid 960x540 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_4_top).to eq('Live Profile 4 (Main)')
    end
  end

  describe('Valid 640x360 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_3).to eq('Live Profile 3 (Main)')
    end
  end

  describe('Valid 480x270 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_2).to eq('Live Profile 2 (Main)')
    end
  end

  describe('Valid 192x108 profile listed for resolution') do
    it('/outputs correct profile for resolution') do
      expect(LiveVideoProfileFinder.live_profile_1).to eq('Live Profile 1 (Baseline)')
    end
  end

  describe('Argument error - bitrate') do
    it('/Argument error raised - bitrate missing') do
      expect { raise LiveVideoProfileFinder.live_argument_error_bitrate }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error - resolution') do
    it('/Argument error raised - resolution missing') do
      expect { raise LiveVideoProfileFinder.live_argument_error_resolution }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error - resoluton not supported') do
    it('/Argument error raised - resoluton not supported') do
      expect { raise LiveVideoProfileFinder.live_argument_error_resolution_nil }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error') do
    it('/Argument error raised') do
      expect { raise LiveVideoProfileFinder.live_argument_error }.to raise_error(ArgumentError)
    end
  end
end
