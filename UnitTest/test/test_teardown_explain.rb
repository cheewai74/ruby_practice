require 'minitest/autorun'

class TestTearDown < MiniTest::Test

    
    def setup 
        puts "In setup"
    end  

    def teardown 
        puts "In teardown"
    end  

    def test_one 
        puts "In test_one"
    end

    def test_two 
        puts "In test_two"
    end

end
