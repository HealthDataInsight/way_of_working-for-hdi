# frozen_string_literal: true

require 'way_of_working'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem_extension(WayOfWorking::For)
loader.setup

# Require "internal" plugin(s) here
require 'way_of_working/rake_tasks'

module WayOfWorking
  module For
    module Hdi
      class Error < StandardError; end
    end
  end
end

WayOfWorking::Configuration.tap do |config|
  # We set the organisation abbreviation and Gem version for the README badge
  config.organisation_abbreviation = 'HDI'
  config.organisation_gem_version = WayOfWorking::For::Hdi::VERSION
end
