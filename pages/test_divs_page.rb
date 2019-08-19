#  frozen_string_literal: true

require './lib/constants'
require './lib/utils'

include Utils

# Divs used in testing
class TestDivs < SitePrism::Page
  # Testdiv used in testing

  element :google_search_bar, '[title=Search]'
  element :google_result_stats, '[id=resultStats]'

  # element :xpath_based_element_location, :xpath, '<insert_xpath>'
  # element :class_based_element_location, '[class=<class_name>]'
  # element :util_based_element_location, create_data_test_id(<element_constant>)
end
