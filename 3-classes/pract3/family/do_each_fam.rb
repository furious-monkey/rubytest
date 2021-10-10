require_relative "family"

fm1 = FamilyMember.new("joe", "male", "married", 35, "y")
fm2 = FamilyMember.new("mary", "female", "married", 36, "y")
fm3 = FamilyMember.new("kyle", "male", "single", 15, "n")
fm4 = FamilyMember.new("sarah", "female", "single", 5, "n")

family = [fm1,fm2,fm3,fm4]

family.each do |fam_mem|
  puts "'name: ' #{fam_mem.name} 'sex: ' #{fam_mem.sex} 'status: ' #{fam_mem.status} 'age: '#{fam_mem.age} 'children: '#{fam_mem.children}"
end

