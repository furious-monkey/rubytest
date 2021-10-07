class Person
  attr_accessor :name1, :name2

  def initialize(fname, lname)
    @fname = fname
    @lname = lname
  end
end

inst1 = Person.new("dude","yes")
inst2 = Person.new("dude","no")
inst3 = Person.new("bro","please")

p inst1 
inst1.name1 = "bill"
p inst1

