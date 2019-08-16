# frozen_string_literal: true

# Unit test module for metric_value_comparison VoD
module MetricValueComparisonVod
  # Valid active cdn a
  def valid_metric_value_comparison_initial_vod_active_cdn_a_b_initial
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid active cdn b
  def valid_metric_value_comparison_initial_vod_active_cdn_a_b_comparison
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid active cdn b
  def valid_metric_value_comparison_initial_vod_active_cdn_b_a_initial
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid active cdn a
  def valid_metric_value_comparison_initial_vod_active_cdn_b_a_comparison
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid data centre a
  def valid_metric_value_comparison_initial_vod_data_centre_a_b_initial
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid data centre b
  def valid_metric_value_comparison_initial_vod_data_centre_a_b_comparison
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid data centre b
  def valid_metric_value_comparison_initial_vod_data_centre_b_a_initial
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid data centre a
  def valid_metric_value_comparison_initial_vod_data_centre_b_a_comparison
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid heuristic state a
  def valid_metric_value_comparison_initial_vod_heuristic_state_a_b_initial
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid heuristic state b
  def valid_metric_value_comparison_initial_vod_heuristic_state_a_b_comparison
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid heuristic state b
  def valid_metric_value_comparison_initial_vod_heuristic_state_b_a_initial
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid heuristic state a
  def valid_metric_value_comparison_initial_vod_heuristic_state_b_a_comparison
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid audio bitrate a
  def valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_initial
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid audio bitrate b
  def valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_comparison
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid audio bitrate b
  def valid_metric_value_comparison_initial_vod_audio_bitrate_b_a_initial
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid audio bitrate a
  def valid_metric_value_comparison_initial_vod_audio_bitrate_b_a_comparison
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid video bitrate a
  def valid_metric_value_comparison_initial_vod_video_bitrate_a_b_initial
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid video bitrate b
  def valid_metric_value_comparison_initial_vod_video_bitrate_a_b_comparison
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid video bitrate b
  def valid_metric_value_comparison_initial_vod_video_bitrate_b_a_initial
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid video bitrate a
  def valid_metric_value_comparison_initial_vod_video_bitrate_b_a_comparison
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid total bitrate a
  def valid_metric_value_comparison_initial_vod_total_bitrate_a_b_initial
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid total bitrate b
  def valid_metric_value_comparison_initial_vod_total_bitrate_a_b_comparison
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid total bitrate b
  def valid_metric_value_comparison_initial_vod_total_bitrate_b_a_initial
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid total bitrate a
  def valid_metric_value_comparison_initial_vod_total_bitrate_b_a_comparison
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid frame rate a
  def valid_metric_value_comparison_initial_vod_frame_rate_a_b_initial
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid frame rate b
  def valid_metric_value_comparison_initial_vod_frame_rate_a_b_comparison
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid frame rate b
  def valid_metric_value_comparison_initial_vod_frame_rate_b_a_initial
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid frame rate a
  def valid_metric_value_comparison_initial_vod_frame_rate_b_a_comparison
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Valid resolution a
  def valid_metric_value_comparison_initial_vod_resolution_a_b_initial
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'initial')
  end

  # Valid resolution b
  def valid_metric_value_comparison_initial_vod_resolution_a_b_comparison
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'a', 'b', 'comparison')
  end

  # Valid resolution b
  def valid_metric_value_comparison_initial_vod_resolution_b_a_initial
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'initial')
  end

  # Valid resolution a
  def valid_metric_value_comparison_initial_vod_resolution_b_a_comparison
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end
end

# Unit test module for metric_value_comparison VoD errors
module MetricValueComparisonVodErrors
  # Type error with null value
  def argument_error_missing_value
    metric_value_comparison('', 'unit_tests/supporting_files/mock_vod', 'b', 'a', 'comparison')
  end

  # Argument error with null asset_type
  def argument_error_missing_asset_type
    metric_value_comparison('resolution', '', 'b', 'a', 'comparison')
  end

  # Argument error with null initial_array
  def argument_error_missing_initial_array
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', '', 'a', 'comparison')
  end

  # Argument error with null comparison_array
  def argument_error_missing_comparison_array
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'b', '', 'comparison')
  end

  # Argument error with null wanted_data_order
  def argument_error_missing_wanted_data_order
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'b', 'a', '')
  end

  # Argument error with 4 missing arguments
  def argument_error_missing_4
    metric_value_comparison('comparison')
  end

  # Argument error with 3 missing arguments
  def argument_error_missing_3
    metric_value_comparison('a', 'comparison')
  end

  # Argument error with 2 missing arguments
  def argument_error_missing_2
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'comparison')
  end

  # Argument error with 1 missing arguments
  def argument_error_missing_1
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_vod', 'b', 'a')
  end
end

####################################
# Unit test module for metric_value_comparison live
module MetricValueComparisonLive
  # Valid active cdn a
  def valid_metric_value_comparison_initial_live_active_cdn_a_b_initial
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid active cdn b
  def valid_metric_value_comparison_initial_live_active_cdn_a_b_comparison
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid active cdn b
  def valid_metric_value_comparison_initial_live_active_cdn_b_a_initial
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid active cdn a
  def valid_metric_value_comparison_initial_live_active_cdn_b_a_comparison
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid data centre a
  def valid_metric_value_comparison_initial_live_data_centre_a_b_initial
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid data centre b
  def valid_metric_value_comparison_initial_live_data_centre_a_b_comparison
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid data centre b
  def valid_metric_value_comparison_initial_live_data_centre_b_a_initial
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid data centre a
  def valid_metric_value_comparison_initial_live_data_centre_b_a_comparison
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid heuristic state a
  def valid_metric_value_comparison_initial_live_heuristic_state_a_b_initial
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid heuristic state b
  def valid_metric_value_comparison_initial_live_heuristic_state_a_b_comparison
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid heuristic state b
  def valid_metric_value_comparison_initial_live_heuristic_state_b_a_initial
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid heuristic state a
  def valid_metric_value_comparison_initial_live_heuristic_state_b_a_comparison
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid audio bitrate a
  def valid_metric_value_comparison_initial_live_audio_bitrate_a_b_initial
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid audio bitrate b
  def valid_metric_value_comparison_initial_live_audio_bitrate_a_b_comparison
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid audio bitrate b
  def valid_metric_value_comparison_initial_live_audio_bitrate_b_a_initial
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid audio bitrate a
  def valid_metric_value_comparison_initial_live_audio_bitrate_b_a_comparison
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid video bitrate a
  def valid_metric_value_comparison_initial_live_video_bitrate_a_b_initial
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid video bitrate b
  def valid_metric_value_comparison_initial_live_video_bitrate_a_b_comparison
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid video bitrate b
  def valid_metric_value_comparison_initial_live_video_bitrate_b_a_initial
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid video bitrate a
  def valid_metric_value_comparison_initial_live_video_bitrate_b_a_comparison
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid total bitrate a
  def valid_metric_value_comparison_initial_live_total_bitrate_a_b_initial
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid total bitrate b
  def valid_metric_value_comparison_initial_live_total_bitrate_a_b_comparison
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid total bitrate b
  def valid_metric_value_comparison_initial_live_total_bitrate_b_a_initial
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid total bitrate a
  def valid_metric_value_comparison_initial_live_total_bitrate_b_a_comparison
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid frame rate a
  def valid_metric_value_comparison_initial_live_frame_rate_a_b_initial
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid frame rate b
  def valid_metric_value_comparison_initial_live_frame_rate_a_b_comparison
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid frame rate b
  def valid_metric_value_comparison_initial_live_frame_rate_b_a_initial
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid frame rate a
  def valid_metric_value_comparison_initial_live_frame_rate_b_a_comparison
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Valid resolution a
  def valid_metric_value_comparison_initial_live_resolution_a_b_initial
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'initial')
  end

  # Valid resolution b
  def valid_metric_value_comparison_initial_live_resolution_a_b_comparison
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'a', 'b', 'comparison')
  end

  # Valid resolution b
  def valid_metric_value_comparison_initial_live_resolution_b_a_initial
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'initial')
  end

  # Valid resolution a
  def valid_metric_value_comparison_initial_live_resolution_b_a_comparison
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end
end

# Unit test module for metric_value_comparison live errors
module MetricValueComparisonLiveErrors
  # Type error with null value
  def argument_error_missing_value
    metric_value_comparison('', 'unit_tests/supporting_files/mock_live', 'b', 'a', 'comparison')
  end

  # Argument error with null asset_type
  def argument_error_missing_asset_type
    metric_value_comparison('resolution', '', 'b', 'a', 'comparison')
  end

  # Argument error with null initial_array
  def argument_error_missing_initial_array
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', '', 'a', 'comparison')
  end

  # Argument error with null comparison_array
  def argument_error_missing_comparison_array
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'b', '', 'comparison')
  end

  # Argument error with null wanted_data_order
  def argument_error_missing_wanted_data_order
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'b', 'a', '')
  end

  # Argument error with 4 missing arguments
  def argument_error_missing_4
    metric_value_comparison('comparison')
  end

  # Argument error with 3 missing arguments
  def argument_error_missing_3
    metric_value_comparison('a', 'comparison')
  end

  # Argument error with 2 missing arguments
  def argument_error_missing_2
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'comparison')
  end

  # Argument error with 1 missing arguments
  def argument_error_missing_1
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_live', 'b', 'a')
  end
end

####################################
# Unit test module for metric_value_comparison linear
module MetricValueComparisonLinear
  # Valid active cdn a
  def valid_metric_value_comparison_initial_linear_active_cdn_a_b_initial
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid active cdn b
  def valid_metric_value_comparison_initial_linear_active_cdn_a_b_comparison
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid active cdn b
  def valid_metric_value_comparison_initial_linear_active_cdn_b_a_initial
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid active cdn a
  def valid_metric_value_comparison_initial_linear_active_cdn_b_a_comparison
    metric_value_comparison('activeCdn', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid data centre a
  def valid_metric_value_comparison_initial_linear_data_centre_a_b_initial
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid data centre b
  def valid_metric_value_comparison_initial_linear_data_centre_a_b_comparison
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid data centre b
  def valid_metric_value_comparison_initial_linear_data_centre_b_a_initial
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid data centre a
  def valid_metric_value_comparison_initial_linear_data_centre_b_a_comparison
    metric_value_comparison('dataCentre', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid heuristic state a
  def valid_metric_value_comparison_initial_linear_heuristic_state_a_b_initial
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid heuristic state b
  def valid_metric_value_comparison_initial_linear_heuristic_state_a_b_comparison
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid heuristic state b
  def valid_metric_value_comparison_initial_linear_heuristic_state_b_a_initial
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid heuristic state a
  def valid_metric_value_comparison_initial_linear_heuristic_state_b_a_comparison
    metric_value_comparison('heuristicState', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid audio bitrate a
  def valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_initial
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid audio bitrate b
  def valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_comparison
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid audio bitrate b
  def valid_metric_value_comparison_initial_linear_audio_bitrate_b_a_initial
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid audio bitrate a
  def valid_metric_value_comparison_initial_linear_audio_bitrate_b_a_comparison
    metric_value_comparison('audioBitrate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid video bitrate a
  def valid_metric_value_comparison_initial_linear_video_bitrate_a_b_initial
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid video bitrate b
  def valid_metric_value_comparison_initial_linear_video_bitrate_a_b_comparison
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid video bitrate b
  def valid_metric_value_comparison_initial_linear_video_bitrate_b_a_initial
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid video bitrate a
  def valid_metric_value_comparison_initial_linear_video_bitrate_b_a_comparison
    metric_value_comparison('videoBitrate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid total bitrate a
  def valid_metric_value_comparison_initial_linear_total_bitrate_a_b_initial
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid total bitrate b
  def valid_metric_value_comparison_initial_linear_total_bitrate_a_b_comparison
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid total bitrate b
  def valid_metric_value_comparison_initial_linear_total_bitrate_b_a_initial
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid total bitrate a
  def valid_metric_value_comparison_initial_linear_total_bitrate_b_a_comparison
    metric_value_comparison('totalBitrate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid frame rate a
  def valid_metric_value_comparison_initial_linear_frame_rate_a_b_initial
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid frame rate b
  def valid_metric_value_comparison_initial_linear_frame_rate_a_b_comparison
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid frame rate b
  def valid_metric_value_comparison_initial_linear_frame_rate_b_a_initial
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid frame rate a
  def valid_metric_value_comparison_initial_linear_frame_rate_b_a_comparison
    metric_value_comparison('frameRate', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Valid resolution a
  def valid_metric_value_comparison_initial_linear_resolution_a_b_initial
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'initial')
  end

  # Valid resolution b
  def valid_metric_value_comparison_initial_linear_resolution_a_b_comparison
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'a', 'b', 'comparison')
  end

  # Valid resolution b
  def valid_metric_value_comparison_initial_linear_resolution_b_a_initial
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'initial')
  end

  # Valid resolution a
  def valid_metric_value_comparison_initial_linear_resolution_b_a_comparison
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end
end

# Unit test module for metric_value_comparison linear errors
module MetricValueComparisonLinearErrors
  # Type error with null value
  def argument_error_missing_value
    metric_value_comparison('', 'unit_tests/supporting_files/mock_linear', 'b', 'a', 'comparison')
  end

  # Argument error with null asset_type
  def argument_error_missing_asset_type
    metric_value_comparison('resolution', '', 'b', 'a', 'comparison')
  end

  # Argument error with null initial_array
  def argument_error_missing_initial_array
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', '', 'a', 'comparison')
  end

  # Argument error with null comparison_array
  def argument_error_missing_comparison_array
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'b', '', 'comparison')
  end

  # Argument error with null wanted_data_order
  def argument_error_missing_wanted_data_order
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'b', 'a', '')
  end

  # Argument error with 4 missing arguments
  def argument_error_missing_4
    metric_value_comparison('comparison')
  end

  # Argument error with 3 missing arguments
  def argument_error_missing_3
    metric_value_comparison('a', 'comparison')
  end

  # Argument error with 2 missing arguments
  def argument_error_missing_2
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'comparison')
  end

  # Argument error with 1 missing arguments
  def argument_error_missing_1
    metric_value_comparison('resolution', 'unit_tests/supporting_files/mock_linear', 'b', 'a')
  end
end
