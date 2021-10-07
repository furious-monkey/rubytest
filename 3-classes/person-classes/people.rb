class Person
  def fname 
    @fname
  end
  
  def give_fname(name)
    @fname = name

  end

  def lname
    @lname
  end

  def give_lname(name)
    @lname = name
  end 
end

inst1 = Person.new
inst1.give_fname("mark")
inst1.give_lname("kean")

p inst1
