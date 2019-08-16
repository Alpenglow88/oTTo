# frozen_string_literal: true

module MultipleAssertion
  # A Class which allows RSpec expect blocks to go through the whole block before failing - speeding up debug/fixes
  class CustomExceptions < RSpec::Expectations::ExpectationTarget
    attr_accessor :error_message
    @@error_message = [] # rubocop:disable ClassVars

    # Basically using RSpec's `.to` method here
    def to(matcher = nil, message = nil, &block)
      prevent_operator_matchers(:to) unless matcher
      RSpec::Expectations::PositiveExpectationHandler.handle_matcher(@target, matcher, message, &block)
    rescue RSpec::Expectations::ExpectationNotMetError => e
      @@error_message << e.message
    end

    # Basically using RSpec's `.not_to` method here
    def not_to(matcher = nil, message = nil, &block)
      prevent_operator_matchers(:not_to) unless matcher
      RSpec::Expectations::NegativeExpectationHandler.handle_matcher(@target, matcher, message, &block)
    rescue RSpec::Expectations::ExpectationNotMetError => e
      @@error_message << e.message
    end
    alias to_not not_to

    # Clears the error message afresh
    def self.reset_error_message
      @@error_message = [] # rubocop:disable ClassVars
    end

    # Joins all the error messages together after iterating through
    def self.format_error_message
      @@error_message.map(&:strip).join(" \n")
    end
  end
end

# Used instead of expect - feel free to rename to something else e.g. assert, check
def verify(value = ::RSpec::Expectations::ExpectationTarget::UndefinedValue, &block)
  MultipleAssertion::CustomExceptions.for(value, block)
end

# Allows multiple `verify` arguments to run, before exporting all of the failures at once - rather than exiting at the first fail.
def multiple_assert
  MultipleAssertion::CustomExceptions.reset_error_message
  yield
  error_message = MultipleAssertion::CustomExceptions.format_error_message
  raise RSpec::Expectations::ExpectationNotMetError, error_message unless error_message.empty?
end
