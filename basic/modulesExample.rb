module Friendly
    def method_one
        puts "hello from Friendly"
    end
end

module Friendlier
    def method_two
        puts "hello from Friendlier!!"
    end
end

class MyClass
    include Friendly
    include Friendlier
end

my_object = MyClass.new
my_object.method_one
my_object.method_two

class MySuperclass
end

class MySubclass < MySuperclass
    include Friendly
    include Friendlier
end

subclass_instance = MySubclass.new
subclass_instance.method_one
subclass_instance.method_two