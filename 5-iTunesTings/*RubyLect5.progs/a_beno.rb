# A BENO
# Copyright Mark Keane, All Rights Reserved, 2013

class Beno
	def hi
			puts "hi beno"
	end
end

a = Beno.new
b = Beno.new
c = Beno.new

p a
p b
p c

contents_a =  ObjectSpace.each_object(Beno)   # {|d| "do nothing"}
p contents_a

contents_b =  ObjectSpace.each_object(Beno).to_a
p contents_b

#contents_c =  ObjectSpace.each_object(Object){|x| p x}
#p contents_c


# ruby1.9 beno.rb
# #<Beno:0x113b7c>
# #<Beno:0x113b68>
# #<Beno:0x113b54>
# #<Enumerator:0x113af0>
# [#<Beno:0x113b54>, #<Beno:0x113b68>, #<Beno:0x113b7c>]
