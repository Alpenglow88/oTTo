# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include MetricValueComparisonVod
include MetricValueComparisonLinear
include MetricValueComparisonLive
include MetricValueComparisonVodErrors
include MetricValueComparisonLinearErrors
include MetricValueComparisonLiveErrors

begin
  metric_a_cdn =
    "https://dcavoddazn.akamaized.net/6dvz15nod2jr135q0e3zmwxc1/tv/stream.mpd?channel=1206\u0026h=8fa355cdf2572bccea5303b1369a1b97\u0026mta=de\u0026outlet=dazn-dach\u0026plang=en"
  metric_b_cdn =
    "https://dcavoddazn.akamaized.net/p6ycdlec34oo11mo9v20wg74m/tv/stream.mpd?channel=1202\u0026h=b2dc292cc428b80afaf19ee2cc7ac035\u0026mta=de\u0026outlet=dazn-dach\u0026plang=en"

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid active CDN from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_a_b_initial).to eq(metric_a_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid active CDN from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_a_b_comparison).to eq(metric_b_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid active CDN from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_b_a_initial).to eq(metric_b_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid active CDN from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_active_cdn_b_a_comparison).to eq(metric_a_cdn)
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid data centre from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_a_b_initial).to eq('DC A')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid data centre from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_a_b_comparison).to eq('DC B')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid data centre from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_b_a_initial).to eq('DC B')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid data centre from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_data_centre_b_a_comparison).to eq('DC A')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid heuristic state from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_a_b_initial).to eq('steady')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid heuristic state from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_a_b_comparison).to eq('panic-mode')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid heuristic state from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_b_a_initial).to eq('panic-mode')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid heuristic state from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_heuristic_state_b_a_comparison).to eq('steady')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid audio bitrate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_initial).to eq('125374')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid audio bitrate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_comparison).to eq('125375')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid audio bitrate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_b_a_initial).to eq('125375')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid audio bitrate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_audio_bitrate_b_a_comparison).to eq('125374')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid video bitrate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_a_b_initial).to eq('828000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid video bitrate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_a_b_comparison).to eq('468000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid video bitrate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_b_a_initial).to eq('468000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid video bitrate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_video_bitrate_b_a_comparison).to eq('828000')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid total bitrate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_a_b_initial).to eq('953374')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid total bitrate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_a_b_comparison).to eq('593375')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid total bitrate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_b_a_initial).to eq('593375')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid total bitrate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_total_bitrate_b_a_comparison).to eq('953374')
    end
  end
  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid frame rate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_a_b_initial).to eq('50')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid frame rate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_a_b_comparison).to eq('25')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid frame rate from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_b_a_initial).to eq('25')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid frame rate from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_frame_rate_b_a_comparison).to eq('50')
    end
  end
  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid resolution from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_a_b_initial).to eq('960x540')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid resolution from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_a_b_comparison).to eq('640x360')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_vod_metrics_b') do
    it('/Returns valid resolution from metric b') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_b_a_initial).to eq('640x360')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_vod_metrics_a') do
    it('/Returns valid resolution from metric a') do
      # MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_a_b_initial
      expect(MetricValueComparisonVod.valid_metric_value_comparison_initial_vod_resolution_b_a_comparison).to eq('960x540')
    end
  end

  describe('Type error with null value') do
    it('/raises type error') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_value }.to raise_error(TypeError)
    end
  end

  describe('Errno::ENOENT with null asset_type') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_asset_type }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Errno::ENOENT with null initial_array') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_initial_array }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Errno::ENOENT with null comparison_array') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_comparison_array }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Type error with null wanted_data_order') do
    it('/raises type error') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_wanted_data_order }.to raise_error(TypeError)
    end
  end

  describe('Type error with 4 missing arguments') do
    it('/raises type error') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_4 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 3 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_3 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 2 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_2 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 1 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonVodErrors.argument_error_missing_1 }.to raise_error(ArgumentError)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid active CDN from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_a_b_initial).to eq(metric_a_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid active CDN from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_a_b_comparison).to eq(metric_b_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid active CDN from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_b_a_initial).to eq(metric_b_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid active CDN from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_active_cdn_b_a_comparison).to eq(metric_a_cdn)
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid data centre from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_a_b_initial).to eq('DC A')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid data centre from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_a_b_comparison).to eq('DC B')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid data centre from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_b_a_initial).to eq('DC B')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid data centre from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_data_centre_b_a_comparison).to eq('DC A')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid heuristic state from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_a_b_initial).to eq('steady')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid heuristic state from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_a_b_comparison).to eq('panic-mode')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid heuristic state from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_b_a_initial).to eq('panic-mode')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid heuristic state from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_heuristic_state_b_a_comparison).to eq('steady')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid audio bitrate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_a_b_initial).to eq('125374')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid audio bitrate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_a_b_comparison).to eq('125375')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid audio bitrate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_b_a_initial).to eq('125375')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid audio bitrate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_audio_bitrate_b_a_comparison).to eq('125374')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid video bitrate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_a_b_initial).to eq('828000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid video bitrate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_a_b_comparison).to eq('468000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid video bitrate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_b_a_initial).to eq('468000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid video bitrate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_video_bitrate_b_a_comparison).to eq('828000')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid total bitrate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_a_b_initial).to eq('953374')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid total bitrate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_a_b_comparison).to eq('593375')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid total bitrate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_b_a_initial).to eq('593375')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid total bitrate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_total_bitrate_b_a_comparison).to eq('953374')
    end
  end
  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid frame rate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_a_b_initial).to eq('50')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid frame rate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_a_b_comparison).to eq('25')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid frame rate from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_b_a_initial).to eq('25')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid frame rate from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_frame_rate_b_a_comparison).to eq('50')
    end
  end
  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid resolution from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_a_b_initial).to eq('960x540')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid resolution from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_a_b_comparison).to eq('640x360')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_live_metrics_b') do
    it('/Returns valid resolution from metric b') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_b_a_initial).to eq('640x360')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_live_metrics_a') do
    it('/Returns valid resolution from metric a') do
      # MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_a_b_initial
      expect(MetricValueComparisonLive.valid_metric_value_comparison_initial_live_resolution_b_a_comparison).to eq('960x540')
    end
  end

  describe('Type error with null value') do
    it('/raises type error') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_value }.to raise_error(TypeError)
    end
  end

  describe('Errno::ENOENT with null asset_type') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_asset_type }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Errno::ENOENT with null initial_array') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_initial_array }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Errno::ENOENT with null comparison_array') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_comparison_array }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Type error with null wanted_data_order') do
    it('/raises type error') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_wanted_data_order }.to raise_error(TypeError)
    end
  end

  describe('Type error with 4 missing arguments') do
    it('/raises type error') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_4 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 3 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_3 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 2 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_2 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 1 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonLiveErrors.argument_error_missing_1 }.to raise_error(ArgumentError)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid active CDN from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_a_b_initial).to eq(metric_a_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid active CDN from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_a_b_comparison).to eq(metric_b_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid active CDN from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_b_a_initial).to eq(metric_b_cdn)
    end
  end

  describe('Valid metric comparison - activeCdn from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid active CDN from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_active_cdn_b_a_comparison).to eq(metric_a_cdn)
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid data centre from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_a_b_initial).to eq('DC A')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid data centre from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_a_b_comparison).to eq('DC B')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid data centre from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_b_a_initial).to eq('DC B')
    end
  end

  describe('Valid metric comparison - dataCentre from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid data centre from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_data_centre_b_a_comparison).to eq('DC A')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid heuristic state from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_a_b_initial).to eq('steady')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid heuristic state from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_a_b_comparison).to eq('panic-mode')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid heuristic state from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_b_a_initial).to eq('panic-mode')
    end
  end

  describe('Valid metric comparison - heuristicState from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid heuristic state from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_heuristic_state_b_a_comparison).to eq('steady')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid audio bitrate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_initial).to eq('125374')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid audio bitrate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_comparison).to eq('125375')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid audio bitrate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_b_a_initial).to eq('125375')
    end
  end

  describe('Valid metric comparison - audioBitrate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid audio bitrate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_audio_bitrate_b_a_comparison).to eq('125374')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid video bitrate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_a_b_initial).to eq('828000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid video bitrate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_a_b_comparison).to eq('468000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid video bitrate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_b_a_initial).to eq('468000')
    end
  end

  describe('Valid metric comparison - videoBitrate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid video bitrate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_video_bitrate_b_a_comparison).to eq('828000')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid total bitrate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_a_b_initial).to eq('953374')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid total bitrate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_a_b_comparison).to eq('593375')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid total bitrate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_b_a_initial).to eq('593375')
    end
  end

  describe('Valid metric comparison - totalBitrate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid total bitrate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_total_bitrate_b_a_comparison).to eq('953374')
    end
  end
  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid frame rate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_a_b_initial).to eq('50')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid frame rate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_a_b_comparison).to eq('25')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid frame rate from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_b_a_initial).to eq('25')
    end
  end

  describe('Valid metric comparison - frameRate from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid frame rate from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_frame_rate_b_a_comparison).to eq('50')
    end
  end
  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid resolution from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_a_b_initial).to eq('960x540')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid resolution from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_a_b_comparison).to eq('640x360')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_linear_metrics_b') do
    it('/Returns valid resolution from metric b') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_b_a_initial).to eq('640x360')
    end
  end

  describe('Valid metric comparison - resolution from unit_tests/supporting_files/mock_linear_metrics_a') do
    it('/Returns valid resolution from metric a') do
      # MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_a_b_initial
      expect(MetricValueComparisonLinear.valid_metric_value_comparison_initial_linear_resolution_b_a_comparison).to eq('960x540')
    end
  end

  describe('Type error with null value') do
    it('/raises type error') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_value }.to raise_error(TypeError)
    end
  end

  describe('Errno::ENOENT with null asset_type') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_asset_type }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Errno::ENOENT with null initial_array') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_initial_array }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Errno::ENOENT with null comparison_array') do
    it('/raises Errno::ENOENT') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_comparison_array }.to raise_error(Errno::ENOENT)
    end
  end

  describe('Type error with null wanted_data_order') do
    it('/raises type error') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_wanted_data_order }.to raise_error(TypeError)
    end
  end

  describe('Type error with 4 missing arguments') do
    it('/raises type error') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_4 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 3 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_3 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 2 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_2 }.to raise_error(ArgumentError)
    end
  end

  describe('Argument error with 1 missing arguments') do
    it('/raises argument error') do
      expect { raise MetricValueComparisonLinearErrors.argument_error_missing_1 }.to raise_error(ArgumentError)
    end
  end
end
