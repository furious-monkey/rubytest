#!/usr/bin/ruby -w
# INHERIT_VARS
# Copyright Mark Keane, All Rights Reserved, 2011

class Bird
	attr_accessor :name, :wings, :legs, :beak, :flies, :batty
	def initialize(name, wings,legs,beak)	
		@name = name
		@wings = wings
		@legs = legs
		@beak = beak
		@flies = true
		@feathers = true
	end

end

class Seagull < Bird
  def initialize(name, wings,legs)
		@namer = name
		@winger = wings
		@legser = legs
  end
end

class Kiwi < Bird
	:nothing
end

jonas = Bird.new("jonas", 2, 2, "long")
seagull2 = Seagull.new("henry", 2, 2)
kiwi = Kiwi.new("K", 3, 3, "very long")

puts "stage 1:"
p jonas
p seagull2

puts "stage 2:"
jonas.batty = "yes"
seagull2.batty = "yes"
p jonas
p seagull2

puts "stage 3:"
seagull2.flies = true
p jonas
p seagull2
p kiwi

#stage 1:
#<Bird:0x007f98e4084178 @name="jonas", @wings=2, @legs=2, @beak="long", @flies=true, @feathers=true>
#<Seagull:0x007f98e4084128 @namer="henry", @winger=2, @legser=2>
#stage 2:
#<Bird:0x007f98e4084178 @name="jonas", @wings=2, @legs=2, @beak="long", @flies=true, @feathers=true, @batty="yes">
#<Seagull:0x007f98e4084128 @namer="henry", @winger=2, @legser=2, @batty="yes">
#stage 3:
#<Bird:0x007f98e4084178 @name="jonas", @wings=2, @legs=2, @beak="long", @flies=true, @feathers=true, @batty="yes">
#<Seagull:0x007f98e4084128 @namer="henry", @winger=2, @legser=2, @batty="yes", @flies=true>
#<Kiwi:0x007fea63123f40 @name="K", @wings=3, @legs=3, @beak="very long", @flies=true, @feathers=true>