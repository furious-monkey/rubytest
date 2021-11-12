#this is the big daddy class

class MoreOriginalA
  attr_accessor :looks, :vibe, :name, :age, :charisma

  def initialize(n)
    self.name = n
  end

  def vibing?
    "#{self.name}: yes, always"
  end

  def hi_iam
    "I am A"
  end

end

# this is beta daddy class
class MoreOriginalB < MoreOriginalA
  def initialize(n, charisma)
    super(n)
    @charisma = charisma
  end

  def vibing?
    "#{self.name}: no, sometimes I do be vibin doe"
  end
  
  def hi_iam
    super + " nah I wish, I am B really. With #{self.charisma}"
  end

end

class MoreOriginalC < MoreOriginalB
  
  def initialize(looks)
    @looks = looks
  end

  def vibing?
    super
  end

  def hi_iam
    @charisma = 200;
    super + " but with #{self.charisma} Charisma and #{self.looks} looks"
  end
end

def print_exception(exception, explicit)
  puts "ERRRORRR: SOZ I cant"
  puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
  puts exception.backtrace.join("\n")
end


A = MoreOriginalA.new("coolio")
B = MoreOriginalB.new("lameo", -200)
C = MoreOriginalC.new("cutio")

puts " =====A======"
puts A.vibing?
puts A.hi_iam
puts " =====B======"
puts B.vibing?
puts B.hi_iam
puts " =====C======"
puts C.vibing?
puts C.hi_iam

puts " ====test===="
# A cant have charisma set up like B since it doesnt inhert anything from it
begin 
  
  Atest = MoreOriginalA.new("coolio", 300)
  puts Atest.hi_iam
rescue ArgumentError => e
    print_exception(e, true)
rescue => e
    print_exception(e, false)
end
