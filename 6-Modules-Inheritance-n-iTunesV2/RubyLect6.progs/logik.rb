#!/usr/bin/ruby -w
# LogiK
# Copyright Mark Keane, All Rights Reserved, 2010

def charades(att1, att2, att3)
	if att1 == "green" && att2 == "tall" && att3 == "woody"
          then puts "Is it a tree?"
	elsif att1 == "green" && att2 == "tall" && !(att3 == "woody")
		then puts "Is it a big green thing?"
	elsif (att1 == "green" || att1 == "red") && (att2 == "tall")
		then puts "Is it a traffic light?"
	elsif att1 == "green" || att2 == "tall" || att3 == "woody"
		then puts "Is it a plant?"
	else puts "Haven't a clue..."
	end
end

def wh_charades(att1, att2, att3)
	case
		when att1 == "green" && att2 == "tall" && att3 == "woody"
		     puts "Is it a tree?"
		when att1 == "green" && att2 == "tall" && !(att3 == "woody")
			 puts "Is it a big green thing?"
		when (att1 == "green" || att1 == "red") && (att2 == "tall")
			 puts "Is it a traffic light?"
		when att1 == "green" || att2 == "tall" || att3 == "woody"
			 puts "Is it a plant?"
		else puts "Haven't a clue..."
	end
end


def unlesso(test)
	unless test
		puts "ok"
	else puts "yuk"
	end
end

puts "Unless test..."
puts unlesso(true)
puts unlesso(false)
foo = "anything"
puts unlesso(foo)
puts unlesso(!foo)
# Unless test
# yuk
# nil
# ok
# nil
# yuk
# nil
# ok
# nil



puts "Running charades..."
p charades("green","tall","woody")
p charades("green","round","plastiky")
p charades("red","round","woody")
p charades("green","tall","stoney")
p charades("red","tall","stoney")
p charades("red","small","stoney")
p charades("red","small","woody")

# Running charades...
# Is it a tree?
# nil
# Is it a plant?
# nil
# Is it a plant?
# nil
# Is it a big green thing?
# nil
# Is it a traffic light?
# nil
# Haven't a clue...
# nil
# Is it a plant?
# nil
puts "And Now the Wh version..."
p wh_charades("green","tall","woody")
p wh_charades("green","round","plastiky")
p wh_charades("red","round","woody")
p wh_charades("green","tall","stoney")
p wh_charades("red","tall","stoney")
p wh_charades("red","small","stoney")
p wh_charades("red","small","woody")

# And Now the Wh version...
# Is it a tree?
# nil
# Is it a plant?
# nil
# Is it a plant?
# nil
# Is it a big green thing?
# nil
# Is it a traffic light?
# nil
# Haven't a clue...
# nil
# Is it a plant?
# nil

