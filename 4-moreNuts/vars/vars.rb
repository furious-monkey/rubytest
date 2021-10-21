class Visit
  @@all= [] #class var initialized
  Places = ["berne","venice"] #constant
  attr_accessor :place, :person
  
  def initialize(pl, per)
    @place,@person = pl, per
  end

  def to_s
    puts "#{@person} visited #{@place}"
  end

  def all #inst access
    @@all
  end

  def self.all #class access
    @@all
  end
  
  def add_visit_via_instance #inst assign
    @@all << self
  end

  def self.add_visit_via_class=(inst) #class assign
    @@all << inst
  end
end

foo = Visit.new("venice", "ruth_b")
bar = Visit.new("berne", "mark_k")
p foo
p bar

puts "Value of @@all, found via foo, is now:"
p foo.all
foo.add_visit_via_instance
puts "value of @@all, foound via bar, is now:"
p bar.all
Visit.add_visit_via_class = bar
puts "value of @@all, found via the class, is now:"
p Visit.all
p Visit::Places
