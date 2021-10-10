require_relative "family"

fm1 = FamilyMember.new("joe", "male", "married", 35, "y")
fm2 = FamilyMember.new("mary", "female", "married", 36, "y")
fm3 = FamilyMember.new("kyle", "male", "single", 15, "n")
fm4 = FamilyMember.new("sarah", "female", "single", 5, "n")

family = [fm1,fm2,fm3,fm4]

family.each {|fam_mem|
  if fam_mem.age < 18
    then puts "#{fam_mem.name.chomp}" + " is underage"
  
  elsif fam_mem.age > 18 && fam_mem.status == "single"
    then puts "#{fam_mem.name.chomp}" + " is single"
  
  else
    puts "#{fam_mem.name.chomp}" + " is married"
  end }

