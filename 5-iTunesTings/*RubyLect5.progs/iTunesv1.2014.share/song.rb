#!/usr/bin/ruby -w
# SONG
# Copyright Mark Keane, All Rights Reserved, 2014


# Class that encodes details of a song.
class Song
	attr_accessor :name, :album, :artist, :time, :owners, :id
	def initialize(name, album, artist, time, owners, id)
		@name = name
		@album = album
		@time = time
		@artist = artist
		@owners = owners
    @id = id
	end

  # Method that prints out the contents of a song object nicely.
	def to_s
		puts "<< #{@name} >> by #{@artist} in their album #{@album} is owed by #{@owners} .\n"
	end	

  # Method that checks if the object given to it is a song.
	def isa?
		instance_of?(Song)
	end

  # Method that plays a song (sort of ;-)
	def play_song
		no = rand(10)
		no.times {print "#{@name} do be do..."}
		puts "\n"
	end

end