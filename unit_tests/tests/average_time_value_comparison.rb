# frozen_string_literal: true

# Unit test module for metric_value_comparison VoD
module AverageTimeValueComparisonLoad
  # Valid load time initial comparison data a
  def average_time_value_comparison_load_vod_linear_initial_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'a', 'b', 'initial')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_vod_linear_comparison_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'a', 'b', 'comparison')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_vod_linear_initial_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'b', 'a', 'initial')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_vod_linear_comparison_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'b', 'a', 'comparison')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_vod_live_initial_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Live', 'a', 'b', 'initial')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_vod_live_comparison_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Live', 'a', 'b', 'comparison')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_vod_live_initial_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Live', 'b', 'a', 'initial')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_vod_live_comparison_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_VoD_to_Live', 'b', 'a', 'comparison')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_linear_vod_initial_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'a', 'b', 'initial')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_linear_vod_comparison_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'a', 'b', 'comparison')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_linear_vod_initial_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'b', 'a', 'initial')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_linear_vod_comparison_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'b', 'a', 'comparison')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_linear_live_initial_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_Live', 'a', 'b', 'initial')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_linear_live_comparison_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_Live', 'a', 'b', 'comparison')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_linear_live_initial_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_Live', 'b', 'a', 'initial')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_linear_live_comparison_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Linear_to_Live', 'b', 'a', 'comparison')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_live_linear_initial_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_Linear', 'a', 'b', 'initial')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_live_linear_comparison_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_Linear', 'a', 'b', 'comparison')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_live_linear_initial_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_Linear', 'b', 'a', 'initial')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_live_linear_comparison_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_Linear', 'b', 'a', 'comparison')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_live_vod_initial_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_VoD', 'a', 'b', 'initial')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_live_vod_comparison_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_VoD', 'a', 'b', 'comparison')
  end

  # Valid load time initial comparison data b
  def average_time_value_comparison_load_live_vod_initial_b
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_VoD', 'b', 'a', 'initial')
  end

  # Valid load time initial comparison data a
  def average_time_value_comparison_load_live_vod_comparison_a
    average_time_value_comparison('load', 'unit_tests/supporting_files/mock_Live_to_VoD', 'b', 'a', 'comparison')
  end
end

# Unit test module for metric_value_comparison VoD
module AverageTimeValueComparisonBuffer
  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_vod_linear_initial_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'a', 'b', 'initial')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_vod_linear_comparison_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'a', 'b', 'comparison')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_vod_linear_initial_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'b', 'a', 'initial')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_vod_linear_comparison_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'b', 'a', 'comparison')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_vod_live_initial_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Live', 'a', 'b', 'initial')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_vod_live_comparison_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Live', 'a', 'b', 'comparison')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_vod_live_initial_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Live', 'b', 'a', 'initial')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_vod_live_comparison_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_VoD_to_Live', 'b', 'a', 'comparison')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_linear_vod_initial_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'a', 'b', 'initial')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_linear_vod_comparison_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'a', 'b', 'comparison')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_linear_vod_initial_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'b', 'a', 'initial')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_linear_vod_comparison_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'b', 'a', 'comparison')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_linear_live_initial_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_Live', 'a', 'b', 'initial')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_linear_live_comparison_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_Live', 'a', 'b', 'comparison')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_linear_live_initial_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_Live', 'b', 'a', 'initial')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_linear_live_comparison_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Linear_to_Live', 'b', 'a', 'comparison')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_live_linear_initial_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_Linear', 'a', 'b', 'initial')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_live_linear_comparison_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_Linear', 'a', 'b', 'comparison')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_live_linear_initial_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_Linear', 'b', 'a', 'initial')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_live_linear_comparison_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_Linear', 'b', 'a', 'comparison')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_live_vod_initial_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_VoD', 'a', 'b', 'initial')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_live_vod_comparison_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_VoD', 'a', 'b', 'comparison')
  end

  # Valid buffer time initial comparison data b
  def average_time_value_comparison_buffer_live_vod_initial_b
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_VoD', 'b', 'a', 'initial')
  end

  # Valid buffer time initial comparison data a
  def average_time_value_comparison_buffer_live_vod_comparison_a
    average_time_value_comparison('buffer', 'unit_tests/supporting_files/mock_Live_to_VoD', 'b', 'a', 'comparison')
  end
end

# Unit test module for metric_value_comparison VoD
module AverageTimeValueComparisonHeuristicSteady
  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_vod_linear_initial_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'a', 'b', 'initial')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_vod_linear_comparison_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'a', 'b', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_vod_linear_initial_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'b', 'a', 'initial')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_vod_linear_comparison_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Linear', 'b', 'a', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_vod_live_initial_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Live', 'a', 'b', 'initial')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_vod_live_comparison_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Live', 'a', 'b', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_vod_live_initial_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Live', 'b', 'a', 'initial')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_vod_live_comparison_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_VoD_to_Live', 'b', 'a', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_linear_vod_initial_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'a', 'b', 'initial')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_linear_vod_comparison_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'a', 'b', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_linear_vod_initial_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'b', 'a', 'initial')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_linear_vod_comparison_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_VoD', 'b', 'a', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_linear_live_initial_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_Live', 'a', 'b', 'initial')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_linear_live_comparison_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_Live', 'a', 'b', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_linear_live_initial_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_Live', 'b', 'a', 'initial')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_linear_live_comparison_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Linear_to_Live', 'b', 'a', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_live_linear_initial_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_Linear', 'a', 'b', 'initial')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_live_linear_comparison_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_Linear', 'a', 'b', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_live_linear_initial_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_Linear', 'b', 'a', 'initial')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_live_linear_comparison_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_Linear', 'b', 'a', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_live_vod_initial_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_VoD', 'a', 'b', 'initial')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_live_vod_comparison_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_VoD', 'a', 'b', 'comparison')
  end

  # Valid heuristic_steady time initial comparison data b
  def average_time_value_comparison_heuristic_steady_live_vod_initial_b
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_VoD', 'b', 'a', 'initial')
  end

  # Valid heuristic_steady time initial comparison data a
  def average_time_value_comparison_heuristic_steady_live_vod_comparison_a
    average_time_value_comparison('heuristic_steady', 'unit_tests/supporting_files/mock_Live_to_VoD', 'b', 'a', 'comparison')
  end
end
