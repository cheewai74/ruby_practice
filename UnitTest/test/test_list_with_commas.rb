"""
Ruby Test Tools: MiniTest
"""

require 'minitest/autorun'
require_relative '../lib/list_with_commas'

class TestListWithCommas < MiniTest::Test

    def test_it_joins_two_words_with_and
        list = ListWithCommas.new
        list.items = ['apple','orange']
        assert('apple and orange' == list.join)
    end
    
    def test_it_joins_three_words_with_and
        list = ListWithCommas.new
        list.items = ['apple','orange','pear']
        assert('apple, orange and pear' == list.join)
    end

end 
