# frozen_string_literal: true

# Unit test module for the VoD video profile finder function
module VodVideoProfileFinder
  # Valid profile listed for resolution 1920x1080
  def vod_profile_8
    video_profile_finder_vod_dc_1_2('1920x1080', 1)
  end

  # Valid profile listed for resolution 1280x720
  def vod_profile_7
    video_profile_finder_vod_dc_1_2('1280x720', 1)
  end

  # Valid profile listed for resolution 960x540
  def vod_profile_6
    video_profile_finder_vod_dc_1_2('960x540', 1)
  end

  # Valid profile listed for resolution 960x540
  def vod_profile_5_low
    video_profile_finder_vod_dc_1_2('960x540', 1_508_000)
  end

  # Valid profile listed for resolution 960x540
  def vod_profile_5_mid
    video_profile_finder_vod_dc_1_2('960x540', 2_208_070)
  end

  # Valid profile listed for resolution 960x540
  def vod_profile_5_top
    video_profile_finder_vod_dc_1_2('960x540', 2_807_999)
  end

  # Valid profile listed for resolution 704x396
  def vod_profile_4
    video_profile_finder_vod_dc_1_2('704x396', 1)
  end

  # Valid profile listed for resolution 512x288
  def vod_profile_3
    video_profile_finder_vod_dc_1_2('512x288', 1)
  end

  # Valid profile listed for resolution 384x216
  def vod_profile_2
    video_profile_finder_vod_dc_1_2('384x216', 1)
  end

  # Valid profile listed for resolution 192x108
  def vod_profile_1
    video_profile_finder_vod_dc_1_2('192x108', 1)
  end

  # Argument error - bitrate
  def vod_argument_error_bitrate
    video_profile_finder_vod_dc_1_2('192x108')
  end

  # Argument error - resolution
  def vod_argument_error_resolution
    video_profile_finder_vod_dc_1_2('', 1)
  end

  # Argument error - resolution nil
  def vod_argument_error_resolution_nil
    video_profile_finder_vod_dc_1_2('4x3', 1)
  end

  # Argument error
  def vod_argument_error
    video_profile_finder_vod_dc_1_2
  end
end

# Unit test module for the Linear video profile finder function
module LinearVideoProfileFinder
  # Valid profile listed for resolution 1920x1080
  def linear_profile_7
    video_profile_finder_linear('1920x1080')
  end

  # Valid profile listed for resolution 1280x720
  def linear_profile_6
    video_profile_finder_linear('1280x720')
  end

  # Valid profile listed for resolution 960x540
  def linear_profile_5
    video_profile_finder_linear('960x540')
  end

  # Valid profile listed for resolution 704x396
  def linear_profile_4
    video_profile_finder_linear('704x396')
  end

  # Valid profile listed for resolution 512x288
  def linear_profile_3
    video_profile_finder_linear('640x360')
  end

  # Valid profile listed for resolution 384x216
  def linear_profile_2
    video_profile_finder_linear('384x216')
  end

  # Valid profile listed for resolution 192x108
  def linear_profile_1
    video_profile_finder_linear('192x108')
  end

  # Argument error - bitrate
  def linear_argument_error
    video_profile_finder_linear
  end

  # Argument error - resolution
  def linear_argument_error_resolution_null
    video_profile_finder_linear('')
  end

  # Argument error - resolution nil
  def linear_argument_error_resolution_nil
    video_profile_finder_linear('4x3')
  end
end

# Unit test module for the Live video profile finder function
module LiveVideoProfileFinder
  # Valid profile listed for resolution 1280x720
  def live_profile_8_on
    video_profile_finder_live('1280x720', 6_628_000)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_8_over
    video_profile_finder_live('1280x720', 9_628_000)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_7_low
    video_profile_finder_live('1280x720', 4_528_000)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_7_mid
    video_profile_finder_live('1280x720', 5_528_000)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_7_top
    video_profile_finder_live('1280x720', 6_627_999)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_6_low
    video_profile_finder_live('1280x720', 3_128_000)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_6_mid
    video_profile_finder_live('1280x720', 3_999_000)
  end

  # Valid profile listed for resolution 1280x720
  def live_profile_6_top
    video_profile_finder_live('1280x720', 4_527_999)
  end

  # Valid profile listed for resolution 960x540
  def live_profile_5_low
    video_profile_finder_live('960x540', 1_628_000)
  end

  # Valid profile listed for resolution 960x540
  def live_profile_5_mid
    video_profile_finder_live('960x540', 2_208_070)
  end

  # Valid profile listed for resolution 960x540
  def live_profile_5_top
    video_profile_finder_live('960x540', 3_127_999)
  end

  # Valid profile listed for resolution 960x540
  def live_profile_4_low
    video_profile_finder_live('960x540', 904_000)
  end

  # Valid profile listed for resolution 960x540
  def live_profile_4_mid
    video_profile_finder_live('960x540', 1_254_000)
  end

  # Valid profile listed for resolution 960x540
  def live_profile_4_top
    video_profile_finder_live('960x540', 1_627_999)
  end

  # Valid profile listed for resolution 640x360
  def live_profile_3
    video_profile_finder_live('640x360', 1)
  end

  # Valid profile listed for resolution 480x270
  def live_profile_2
    video_profile_finder_live('480x270', 1)
  end

  # Valid profile listed for resolution 192x108
  def live_profile_1
    video_profile_finder_live('192x108', 1)
  end

  # Argument error - bitrate
  def live_argument_error_bitrate
    video_profile_finder_live('192x108')
  end

  # Argument error - resolution
  def live_argument_error_resolution
    video_profile_finder_live('', 1)
  end

  # Argument error - resolution nil
  def live_argument_error_resolution_nil
    video_profile_finder_live('4x3', 1)
  end

  # Argument error
  def live_argument_error
    video_profile_finder_live
  end
end
