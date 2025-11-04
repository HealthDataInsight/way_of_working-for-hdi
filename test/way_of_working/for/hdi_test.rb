# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module For
    class HdiTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::WayOfWorking::For::Hdi::VERSION
      end

      def test_sub_command_lists_exit_with_status_zero
        result = system('bundle exec way_of_working exec > /dev/null 2>&1')
        assert result, "way_of_working exec command failed"

        result = system('bundle exec way_of_working init > /dev/null 2>&1')
        assert result, "way_of_working init command failed"

        result = system('bundle exec way_of_working new > /dev/null 2>&1')
        assert result, "way_of_working new command failed"
      end
    end
  end
end
