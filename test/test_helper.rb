# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require 'simplecov'
require 'simplecov-console'

SimpleCov.minimum_coverage 80
SimpleCov.start 'rails' if ENV['COVERAGE'].present?
SimpleCov.formatter = SimpleCov::Formatter::Console

require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
