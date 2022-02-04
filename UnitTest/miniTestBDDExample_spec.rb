require 'minitest/autorun'
require_relative './src/hello'

describe Hello do
    describe "#Hello" do
        it "should return world" do
            # assert_equal has now become must_equal
            Hello.world.must_equal 'world'
        end
    end
end