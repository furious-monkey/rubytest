#!/usr/bin/ruby -w
# ACTOR
# Copyright Mark Keane, All Rights Reserved, 2014

# Class that encodes details of actors that own songs/albums.
class Actor
	attr_accessor :name, :id
	def initialize(name)
		@name = name
		@id = name.object_id
	end

  # Method that prints out the contents of an actor object nicely.
	def to_s
		puts "Actor #{@name} has ID: #{@id}.\n"
	end	
	
	# Method that checks if an object given to it is an actor.
  def isa?
		instance_of?(Actor)
	end
	
	# Class method that builds all the actor objects using names originally from owners.csv.
  # Recall owners.csv got read into $hash_owners, we recover all the names associated with all
  # the song-ids and reduce it to an array of unique owner-name strings. We then use these to build
  # actor obejcts using Actor.new.  The method returns an array of actor-objects.

  def self.build_all(actors = [])
		actor_names = $hash_owners.values.clean_up
		actor_names.each {|name| actors << Actor.new(name)}
		actors
	end

  # Method that takes an actor and allows him/her/it to buy a song; by just adding the persons name to the song.
  # Obviously, this should be more complicated, like it should write something to owners.csv too.

	def buys_song(song)
		song.owners <<  (" " + @name)
  end

  # Method that takes an actor finds all the songs owned by the actor.
  # It returns a array of song objects.

  def what_songs_does_he_own()
      $songs.select{|song| song.owners.include?(@name)}
  end
	
end

