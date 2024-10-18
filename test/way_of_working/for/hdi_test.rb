# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module For
    class HdiTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::WayOfWorking::For::Hdi::VERSION
      end
    end
  end
end
