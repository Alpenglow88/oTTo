# frozen_string_literal: true

require './lib/constants'
require './lib/utils'

# Helper functions that are to be used within test steps for ease of testing
module Helpers
  # Takes the Browserstack link for builds and fetches the session ID
  def fetch_browserstack_session_id(osver)
    api_link = create_browserstack_build_list_link(osver).delete("'")
    uri = URI.parse(api_link)
    request = Net::HTTP::Get.new(uri)
    request.basic_auth(BROWSERSTACKUSER, BROWSERSTACKKEY)
    req_options = {
      use_ssl: uri.scheme == 'https'
    }
    Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
  end

  # Takes the Browserstack link for session logs and fetches the logs
  def fetch_browserstack_logs(osver, session_id)
    api_link = browserstack_session_logs_link(osver, session_id).delete("'")
    puts api_link
    uri = URI.parse(api_link)
    request = Net::HTTP::Get.new(uri)
    request.basic_auth(BROWSERSTACKUSER, BROWSERSTACKKEY)
    req_options = {
      use_ssl: uri.scheme == 'https'
    }
    response =
      Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
    File.open('Session_Logs.json', 'a') { |f| f.write(response.body) }
  end
end
