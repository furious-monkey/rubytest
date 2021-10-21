class Sausage
  attr_accessor :name, :made_of, :taste

  def initialize(name, made, tasty)
    @name, @made_of, @taste = name, made, tasty
  end

  def self.judge_all(*sausies)
    sausies.each do |saussy|
      if saussy.made_of == "pork"
        then saussy.taste = "haram"
      elsif saussy.made_of == "quorn"
        then saussy.taste = "yummy"
      else saussy.taste = " dont know" end #this end is for if
    end #this end if for do
  end
end

saus1 = Sausage.new("selbys","pork", nil)
saus2 = Sausage.new("grandby","quorn",nil)
saus3 = Sausage.new("blalong", "beef",nil)
p saus1
p saus2
Sausage.judge_all(saus1,saus2,saus3)
p saus1
p saus2

