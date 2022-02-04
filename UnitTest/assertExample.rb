require "test/unit/assertions"
include Test::Unit::Assertions

hello = 'world'
# hello = 'world  kkk'
assert_equal 'world', hello , "hello function should return 'world' "

x = true
#x = false
assert x, "x should pass"

# flunk example
# flunk "throw a failure message"