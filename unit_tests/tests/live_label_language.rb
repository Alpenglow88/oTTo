# frozen_string_literal: true

# Unit test module for live label function
module LiveLanguageLabel
  # Undefined label outout - Sandbox
  def undefined_label_sand
    live_label_language('undefined', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - English Sandbox
  def valid_label_en_sand
    live_label_language('en', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - Italian Sandbox
  def valid_label_it_sand
    live_label_language('it', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - Spanish Sandbox
  def valid_label_es_sand
    live_label_language('es', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - German Sandbox
  def valid_label_de_sand
    live_label_language('de', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - French Sandbox
  def valid_label_fr_sand
    live_label_language('fr', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - Japanese Sandbox
  def valid_label_jp_sand
    live_label_language('jp', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Valid label outout - OOT Sandbox
  def valid_label_oot_sand
    live_label_language('za', 'https://playback-web-player-master.indaznlab.com/')
  end

  # Argument Error - Language
  def argument_error
    live_label_language
  end
end
