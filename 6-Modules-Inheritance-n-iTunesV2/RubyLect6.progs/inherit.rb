#!/usr/bin/ruby -w
# INHERIT
# Copyright Mark Keane, All Rights Reserved, 2010

class Bird
	attr_accessor :name, :wings, :legs, :beak, :flies, :feathers
	def initialize(name, wings,legs,beak)	
		@name = name
		@wings = wings
		@legs = legs
		@beak = beak
		@flies = true
		@feathers = true
	end
	
	def beak_size
		@beak
	end
	
	def can_fly?
		if @feathers && @flies then true
    elsif !@flies then false
		end
	end
end

class Seagull < Bird
	def eats_garbage?
		instance_of?(Seagull)
	end
	
	def  beak_size
		@beak + @beak
	end

end

class Kiwi < Bird
	attr_accessor  :cute
	def initialize(name, wings,legs,beak)	
		@name = name
		@wings = false
		@legs = legs
		@beak = beak
		@flies = false
		@feathers = true
		@cute = true
	end

	def opens_shoe_polish_tins?
		instance_of?(Kiwi)
	end
end

jonas = Bird.new("jonas", 2, 2, "long")
seagull2 = Seagull.new("henry", 2, 2, "squat")
kiwi1 = Kiwi.new("kiwi", 2, 1, "long_and_thin")

p jonas
p seagull2
p kiwi1

#ruby inherit.rb
#<Bird:0x2646c @beak="long", @legs=2, @feathers=true, @wings=2, @flies=true, @name="jonas">
#<Seagull:0x26430 @beak="squat", @legs=2, @feathers=true, @wings=2, @flies=true, @name="henry">
#<Kiwi:0x263f4 @beak="long_and_thin", @legs=1, @feathers=true, @cute=true, @wings=false, @flies=false, @name="kiwi"

p jonas.beak_size
p seagull2.beak_size
p kiwi1.beak_size
# "long"
# "squat"
# "long_and_thin"

p jonas.can_fly?
p seagull2.can_fly?
p kiwi1.can_fly?
# true
# true
# false

#p jonas.eats_garbage?  #undefined method `eats_garbage?' for #<Bird:0x266d8>
p seagull2.eats_garbage?  # true
#p kiwi1.eats_garbage?  #undefined method `eats_garbage?' for #<Kiwi:0x267c8>

# p jonas.opens_shoe_polish_tins? undefined method `opens_shoe_polish_tins?' for #<Bird:0x26750>
# p seagull2.opens_shoe_polish_tins? undefined method `opens_shoe_polish_tins?' for #<Seagull:0x2678c>
p kiwi1.opens_shoe_polish_tins?
# true
puts "But, kiwis are really cute !: #{kiwi1.cute}"