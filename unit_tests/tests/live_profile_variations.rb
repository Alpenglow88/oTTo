# frozen_string_literal: true

# Unit test module for data test id creation
module LiveProfileVariations
  # Valid 1280x720 Live asset profile variation - top over
  def top_profile_variation_over
    top_live_profile_variations(9_628_000)
  end

  # Valid 1280x720 Live asset profile variation - top plus one
  def top_profile_variation_plus_one
    top_live_profile_variations(6_628_001)
  end

  # Valid 1280x720 Live asset profile variation - top on
  def top_profile_variation
    top_live_profile_variations(6_628_000)
  end

  # Valid 1280x720 Live asset profile variation - top mid low
  def top_mid_profile_variation_low
    top_live_profile_variations(4_528_000)
  end

  # Valid 1280x720 Live asset profile variation - top mid mid
  def top_mid_profile_variation_mid
    top_live_profile_variations(5_527_950)
  end

  # Valid 1280x720 Live asset profile variation - top mid high
  def top_mid_profile_variation_high
    top_live_profile_variations(4_627_999)
  end

  # Valid 1280x720 Live asset profile variation - top low low
  def top_low_profile_variation_low
    top_live_profile_variations(3_128_000)
  end

  # Valid 1280x720 Live asset profile variation - top low mid
  def top_low_profile_variation_mid
    top_live_profile_variations(3_527_999)
  end

  # Valid 1280x720 Live asset profile variation - top low high
  def top_low_profile_variation_high
    top_live_profile_variations(4_527_999)
  end

  # Valid 960x540 Live asset profile variation - mid top low
  def mid_top_profile_variation_low
    mid_live_profile_variations(1_628_000)
  end

  # Valid 960x540 Live asset profile variation - mid top mid
  def mid_top_profile_variation_mid
    mid_live_profile_variations(2_628_000)
  end

  # Valid 960x540 Live asset profile variation - mid top high
  def mid_top_profile_variation_high
    mid_live_profile_variations(3_127_999)
  end

  # Valid 960x540 Live asset profile variation - mid low low
  def mid_low_profile_variation_low
    mid_live_profile_variations(904_000)
  end

  # Valid 960x540 Live asset profile variation - mid low mid
  def mid_low_profile_variation_mid
    mid_live_profile_variations(1_127_999)
  end

  # Valid 960x540 Live asset profile variation - mid low high
  def mid_low_profile_variation_high
    mid_live_profile_variations(1_627_999)
  end

  # Invalid 1280x720 Live asset profile variation
  def invalid_high_profile_variation
    top_live_profile_variations
  end

  # Invalid 960x540 Live asset profile variation
  def invalid_mid_profile_variation
    mid_live_profile_variations
  end
end
