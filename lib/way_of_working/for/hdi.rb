# frozen_string_literal: true

require 'way_of_working/cli'
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
end
