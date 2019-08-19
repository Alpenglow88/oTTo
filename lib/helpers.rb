# frozen_string_literal: true

require './lib/constants'
require './lib/utils'

# Helper functions that are to be used within test steps for ease of testing
module Helpers
  # Example helper function
  def example_helper_definition(example_parameter)
    expect(example_parameter).to eq(example_expected)
  end
end
