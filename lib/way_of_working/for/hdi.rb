# frozen_string_literal: true

require 'way_of_working/cli'
require_relative 'hdi/paths'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem_extension(WayOfWorking::For)
loader.setup

module WayOfWorking
  module For
    module Hdi
      class Error < StandardError; end
    end
  end

  module SubCommands
    # # This reopens the "way_of_working audit" sub command
    # class Audit
    #   register(For::Hdi::Generators::Audit, 'for', 'for',
    # end
    
    # # This reopens the "way_of_working document" sub command
    # class Document
    #   register(For::Hdi::Generators::Document, 'for', 'for',
    # end
    
    # # This reopens the "way_of_working exec" sub command
    # class Exec
    #   register(For::Hdi::Generators::Exec, 'for', 'for',
    # end

    # # This reopens the "way_of_working init" sub command
    # class Init
    #   register(For::Hdi::Generators::Init, 'for', 'for',
    # end

    # # This reopens the "way_of_working new" sub command
    # class New
    #   register(For::Hdi::Generators::New, 'for', 'for [NAME]',
    # end
  end
end
