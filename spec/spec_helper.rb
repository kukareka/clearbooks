#!/usr/bin/env ruby


# Custom include
require 'clearbooks'
require 'savon/mock/spec_helper'


RSpec.configure do |config|
  config.include Savon::SpecHelper

  # config.expect_with :rspec do |expectations|
  #  expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  # end

  # config.mock_with :rspec do |mocks|
  #   mocks.verify_partial_doubles = true
  # end

  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

end # of RSpec.configure

# vim:ts=2:tw=100:wm=100:syntax=ruby
