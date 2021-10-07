class Person
  attr_accessor :fname, :lname
end

inst1 = Person.new
inst1.fname = "mark"
inst1.lname = "keane"

inst2 = Person.new
inst2.fname = "kyle"
inst2.lname = "rogers"

inst3 = Person.new
inst3.fname = "george"
inst3.lname = "micheals"

p inst3
puts inst3
