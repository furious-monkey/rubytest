#!/usr/bin/ruby -w
# SONG
# Copyright Mark Keane, All Rights Reserved, 2014
require_relative 'data'
require_relative 'predicate'
# Class that encodes details of a song.
class Song
	include Pred
	attr_accessor :name, :album, :artist, :time, :owners, :id
	def initialize(name, album, artist, time, owners, id)
		@name = name
		@album = album
		@time = time
		@artist = artist
		@owners = owners
		@id = id
	end

        #method to check if song and owner's song id match
        def id_match?(owners)

          if owners.has_key?(self.id) then
            true
          else
            puts "Song ID:#{self.id}, Name:'#{self.name}' does not have any owners."
            false
          end
        end
	def to_s
		puts "<< #{@name} >> by #{@artist} in their album #{@album} is owed by #{@owners} .\n"
	end

	def play_song
		no = rand(10)
		no.times {print "#{@name} do be do..."}
		puts "\n"
	end
end
