=begin

age = Float(ARGV[0]) rescue (puts "Usage: sameple_app.rb age"; exit)

puts (13..19) === age ? "Teenager!" : "Not a teenager :("
=end

=begin
class Name  
  # Define default getter methods, but not setter methods.  
  attr_reader :first, :last  
  # When someone tries to set a first name, enforce rules about it.  
  def first=(first)  
    if first == nil or first.size == 0  
      raise ArgumentError.new('Everyone must have a first name.')  
    end  
    @first = ""
    first.split.each {|part| @first << part.capitalize + ' '}
    @first.strip!
  end  
  
  # When someone tries to set a last name, enforce rules about it.  
  def last=(last)  
    if last == nil or last.size == 0  
      raise ArgumentError.new('Everyone must have a last name.')  
    end  
    @last = last  
  end  
  
  def full_name  
    "#{@first} #{@last}"  
  end  
  # Delegate to the setter methods instead of setting the instance  
  # variables directly.  
  def initialize(first, last)  
    self.first = first  
    self.last = last  
  end  
end  
  
jacob = Name.new('Jacob', 'Berendes')  
puts jacob.first
jacob.first = 'maRY sue'  
puts jacob.full_name # => "Mary Sue Berendes"  
john = Name.new('johN', 'von Neumann')  
john.full_name # => "John von Neumann"  
puts john.full_name
john.first = 'john'  
john.first # => "John"  
puts john.first

john.first = nil  
# ArgumentError: Everyone must have a first name.  
Name.new('Kero, international football star and performance artist', nil)  
# ArgumentError: Everyone must have a last name.


=end

#  p062stuff.rb  
#  A module may contain constants, methods and classes.  
#  No instances  
  
# p057mymethods2.rb  
# variables and methods start lowercase  
$glob = 5             # global variables start with $  
class TestVar         # class name constant, start uppercase  
 @@cla = 6            # class variables start with @@  
 CONST_VAL = 7        # constant style, all caps, underscore  
 def initialize(x)    # constructor  
  @inst = x           # instance variables start with @  
  @@cla += 1          # each object shares @@cla  
 end  
 def self.cla         # class method, getter  
  @@cla  
 end  
 def self.cla=(y)     # class method, setter, also TestVar.  
  @@cla = y  
 end  
 def inst             # instance method, getter  
  @inst  
 end  
 def inst=(i)         # instance method, setter  
  @inst = i  
 end  
end  
puts $glob  
test = TestVar.new(3) # calls constructor  
puts TestVar.cla      # calls getter  
puts test.inspect     # gives object ID and instance vars  
TestVar.cla = 4       # calls setter  
test.inst=8           # calls setter  
puts TestVar.cla  
puts test.inst        # calls getter  
other = TestVar.new(17)  
puts other.inspect  
puts TestVar.cla