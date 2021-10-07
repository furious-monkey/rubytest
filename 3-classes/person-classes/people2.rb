class Person
  attr_accessor :fname, :lname

  def initialize(fname, lname)
    @fname = fname
    @lname = lname
  end
  def to_s
    "hi " + @fname +"," +@lname
  end
end

inst2 = Person.new("mark", "koo")
p inst2
p inst2.to_s
puts inst2

