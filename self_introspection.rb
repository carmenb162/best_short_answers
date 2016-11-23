# This file is for demonstrating self

# Showing the class of self using .class
puts "the class of 'self' is #{self.class}"


obj = Object.new
def obj.show
  print "Self is an object: "
  puts "Here's self inside a singleton method of itself: "
  puts self
end

obj.show
print "Inspecting obj from outside using print:  "
puts  "Now making sure it's the same object using puts: "
puts obj


# Showing that when self is in an instance method,
# self is equal to the instance method
class Selfie
  def look_at_myself
    self
  end
end

mirror = Selfie.new
x = (mirror.look_at_myself == mirror)

puts "It is #{x} that inside of an instance method, 'self' is equal to the instance method."



# Showing that when self is in a class method,
# self is equal to the class method
class Selfie
  def self.look_at_myself
    self
  end
end

x = (Selfie.look_at_myself == Selfie)

puts "It is #{x} that when inside of a class method, 'self' is equal to the class method."
