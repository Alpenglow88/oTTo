#  frozen_string_literal: true

# Main testing page with elements expected to be found
class Landing < SitePrism::Page
  set_url HOST
  element :landing_page_image, '[data_test_automation_id=otto_logo]'
end

LandingPage = Landing.new
