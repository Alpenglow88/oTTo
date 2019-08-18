# frozen_string_literal: true

# Utility functions to assit with code creation and environment setup
module Utils
  # Takes argument 'id' and creates DOM selector string
  def create_data_test_id(id)
    "[data-test-id~=\'#{id}\']"
  end

  # Create screenshot and encode to png;base 64
  def add_screenshot
    file_path = 'screenshot.png'
    page.driver.browser.save_screenshot(file_path)
    image = File.open(file_path, 'rb', &:read)
    encoded_image = Base64.encode64(image)
    embed(encoded_image, 'image/png;base64', 'SCREENSHOT')
  end

  # Create and store browser logs
  def add_browser_logs
    time_now = Time.now
    # Getting current URL
    current_url = Capybara.current_url.to_s
    # Gather browser logs
    logs = page.driver.browser.manage.logs.get(:browser).map { |line| [line.level, line.message] }
    embed(time_now.strftime('%Y-%m-%d-%H-%M-%S' + "\n") + ('Current URL: ' + current_url + "\n") + logs.join("\n"), 'text/plain', 'BROWSER ERROR')
  end

  # Takes argument 'OS' and creates an API link for Browserstack builds
  def create_browserstack_build_list_link(osver)
    "https://api.browserstack.com/automate/builds/\'#{osver}\'/sessions.json"
  end

  # Takes arguments 'OS' and 'Session_ID and creates an API link for Browserstack automated session logs
  def browserstack_session_logs_link(osver, session_id)
    "https://api.browserstack.com/automate/builds/\'#{osver}\'/sessions/\'#{session_id}\'/logs"
  end

  # Take number and work out it as a percentage of the argument total
  def percent_of(total)
    format '%.2f%%', self / total.to_f * 100
  end

  # Takes the specified integer and gives a decimal value between 0-1
  def percent_divide_to_float_helper(int)
    if int.positive?
      int / 100.to_f
    elsif int.negative?
      raise RangeError
    end
  end

  # Take total time formatted with ":" deliniations and convert into single integer (s)
  def total_time_split_helper(total_time)
    if total_time.include?(':')
      total_time.split(':').map(&:to_i).inject(0) { |a, b| a * 60 + b }
    else
      raise SyntaxError
    end
  end

  # Take timecode formatted with ":" deliniations and convert into single integer(s)
  def timecode_split_helper
    split(':').map(&:to_i).inject(0) { |a, b| a * 60 + b }
  end
end
