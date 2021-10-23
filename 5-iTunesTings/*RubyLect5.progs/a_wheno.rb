#!/opt/local/bin/ruby2.0 -w
# WHEN_TIMES
# Copyright Mark Keane, All Rights Reserved, 2013

def sheep_spotter(test)
	case
	    when test == "sheep"
		   puts "Yup, its a sheep alright."
	    when test == "wolf"
	   	   puts "No, this is a wolf."
	    when test.instance_of?(String)
	   	   puts "I really don't know what this is?"
	    else "Are you trying to poison me, that's not a string !"
	 end
end

p sheep_spotter(nil)
p sheep_spotter("sheep")
p sheep_spotter("wolf")
puts sheep_spotter("elf with a ham")

# ruby when_times.rb
# "Are you tring to poison me, that's not a string !"
# Yup, its a sheep alright.
# nil
# No, this is a wolf.
# nil
# I really don't know what this is?
# nil
# 
# Why the NILS ?