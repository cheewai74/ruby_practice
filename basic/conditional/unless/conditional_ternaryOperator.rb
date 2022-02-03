"""
boolean ? result1: result2

same as:
x = y||z

x ||= y

x = y unless x
"""

count = rand(0..10)
puts count == 1 ? "1 person" : "Many people"