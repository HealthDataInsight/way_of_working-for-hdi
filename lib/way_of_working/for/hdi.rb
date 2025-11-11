# frozen_string_literal: true

require 'way_of_working'
require_relative 'hdi/paths'
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

  # Configure HDI-specific settings
  Configuration.organisation_abbreviation = 'HDI'
  Configuration.organisation_gem_version = For::Hdi::VERSION
end
