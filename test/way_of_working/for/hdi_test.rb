# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module For
    class HdiTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::WayOfWorking::For::Hdi::VERSION
      end

      def test_sub_command_lists_exit_with_status_zero
        _output = `bundle exec way_of_working exec`
        assert $CHILD_STATUS.success?
  
        _output = `bundle exec way_of_working init`
        assert $CHILD_STATUS.success?
  
        _output = `bundle exec way_of_working new`
        assert $CHILD_STATUS.success?
      end
      end
  end
end
