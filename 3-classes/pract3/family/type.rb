require_relative 'family'

fm1 = FamilyMember.new("joe", "male", "married", 35, "y")
fm2 = FamilyMember.new("mary", "female", "married", 36, "y")
fm3 = FamilyMember.new("kyle", "male", "single", 15, "n")
fm4 = FamilyMember.new("sarah", "female", "single", 5, "n")

fm1.parent?
p fm2.child?
fm3.parent?
fm4.parent?

