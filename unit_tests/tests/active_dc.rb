# frozen_string_literal: true

# Unit test module for data test id creation
module ActiveDc
  # Valid data centre A
  def valid_dc_a
    active_dc('https://dcavoddazn.akamaized.net/1ic0zjgwdh96s1my1qo60horxb/tv/stream.mpd?channel=1014&h=78a472e1b44f372910845cf8f0c237a5&mta=de&outlet=dazn-dach&plang=en')
  end

  # Valid data centre A
  def valid_dc_b
    active_dc('https://dcbvoddazn.akamaized.net/1e4v9s1pskisa14lfknzevdiw8/tv/stream.mpd?channel=1022&h=42917032e1db91d649b024571c486230&mta=de&outlet=dazn-dach&plang=en')
  end

  # Valid data centre A
  def valid_dc_1
    active_dc('https://dc1live21014dazn.akamaized.net/out/u/encr_20042242699_7c40861c6cf54f48a2c63664c24fcf7e.mpd?p=tv')
  end

  # Valid data centre A
  def valid_dc_2
    active_dc('https://dc2live2lindazn.akamaized.net/out/u/dazn-linear-dc2-006.mpd?p=tv')
  end

  # Argument Error
  def argument_error
    active_dc
  end
end
