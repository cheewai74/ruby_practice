require 'minitest/autorun'
require_relative './src/hello'

class HelloTest < Minitest::Test

    def test_world
        # TDD "test"
        assert_equal 'world', Hello.world, "Hello.world should return a string called 'world'"
    end

    def test_flunk
        flunk "You shall not Pass."
    end

end
