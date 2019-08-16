# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include AverageTimeValueComparisonLoad
include AverageTimeValueComparisonBuffer
include AverageTimeValueComparisonHeuristicSteady

begin
  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_linear_initial_a).to eq(5.59973)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_linear_comparison_b).to eq(10.079188)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_linear_initial_b).to eq(10.079188)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_linear_comparison_a).to eq(5.59973)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_live_initial_a).to eq(2.56983)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_live_comparison_b).to eq(15.0788)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_live_initial_b).to eq(15.0788)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_vod_live_comparison_a).to eq(2.56983)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_vod_initial_a).to eq(9.87594)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_vod_comparison_b).to eq(4.789)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_vod_initial_b).to eq(4.789)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_vod_comparison_a).to eq(9.87594)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_live_initial_a).to eq(99.87594)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_live_comparison_b).to eq(7.789)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_live_initial_b).to eq(7.789)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_linear_live_comparison_a).to eq(99.87594)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_linear_initial_a).to eq(6.56983)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_linear_comparison_b).to eq(16.0788)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_linear_initial_b).to eq(16.0788)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_linear_comparison_a).to eq(6.56983)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_vod_initial_a).to eq(86.56983)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_vod_comparison_b).to eq(1.0788)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_load_time_b.json') do
    it('/Returns valid average load time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_vod_initial_b).to eq(1.0788)
    end
  end

  describe('Valid average load time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_load_time_a.json') do
    it('/Returns valid average load time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_load_live_vod_comparison_a).to eq(86.56983)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_linear_initial_a).to eq(5.59973)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_linear_comparison_b).to eq(10.079188)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_linear_initial_b).to eq(10.079188)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_linear_comparison_a).to eq(5.59973)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_live_initial_a).to eq(2.56983)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_live_comparison_b).to eq(15.0788)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_live_initial_b).to eq(15.0788)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_vod_live_comparison_a).to eq(2.56983)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_vod_initial_a).to eq(9.87594)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_vod_comparison_b).to eq(4.789)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_vod_initial_b).to eq(4.789)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_vod_comparison_a).to eq(9.87594)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_live_initial_a).to eq(99.87594)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_live_comparison_b).to eq(7.789)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_live_initial_b).to eq(7.789)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_linear_live_comparison_a).to eq(99.87594)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_linear_initial_a).to eq(6.56983)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_linear_comparison_b).to eq(16.0788)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_linear_initial_b).to eq(16.0788)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_linear_comparison_a).to eq(6.56983)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_vod_initial_a).to eq(86.56983)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_vod_comparison_b).to eq(1.0788)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_buffer_time_b.json') do
    it('/Returns valid average buffer time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_vod_initial_b).to eq(1.0788)
    end
  end

  describe('Valid average buffer time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_buffer_time_a.json') do
    it('/Returns valid average buffer time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_buffer_live_vod_comparison_a).to eq(86.56983)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_linear_initial_a).to eq(5.59973)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_linear_comparison_b).to eq(10.079188)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_linear_initial_b).to eq(10.079188)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Linear_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_linear_comparison_a).to eq(5.59973)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_live_initial_a).to eq(2.56983)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_live_comparison_b).to eq(15.0788)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_live_initial_b).to eq(15.0788)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_VoD_to_Live_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_vod_live_comparison_a).to eq(2.56983)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_vod_initial_a).to eq(9.87594)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_vod_comparison_b).to eq(4.789)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_vod_initial_b).to eq(4.789)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_VoD_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_vod_comparison_a).to eq(9.87594)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_live_initial_a).to eq(99.87594)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_live_comparison_b).to eq(7.789)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_live_initial_b).to eq(7.789)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Linear_to_Live_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_linear_live_comparison_a).to eq(99.87594)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_linear_initial_a).to eq(6.56983)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_linear_comparison_b).to eq(16.0788)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_linear_initial_b).to eq(16.0788)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_Linear_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_linear_comparison_a).to eq(6.56983)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_vod_initial_a).to eq(86.56983)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_vod_comparison_b).to eq(1.0788)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_heuristic_steady_time_b.json') do
    it('/Returns valid average heuristic_steady time from data b') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_vod_initial_b).to eq(1.0788)
    end
  end

  describe('Valid average heuristic_steady time returned from unit_tests/supporting_files/mock_Live_to_VoD_average_heuristic_steady_time_a.json') do
    it('/Returns valid average heuristic_steady time from data a') do
      expect(AverageTimeValueComparisonLoad.average_time_value_comparison_heuristic_steady_live_vod_comparison_a).to eq(86.56983)
    end
  end
end
