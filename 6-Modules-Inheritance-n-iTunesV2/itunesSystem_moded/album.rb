#!/usr/bin/ruby -w
# ALBUM
# Copyright Mark Keane, All Rights Reserved, 2014

# Class that encodes details of an album.
class Album
	include Pred
	attr_accessor :name, :tracks, :length, :artist,:owners, :id
	def initialize(name, tracks, length, artist, owners)
		@name = name
		@tracks = tracks
		@length = length
		@artist = artist
    @owners = owners
		@id = name.object_id
	end

  # Method that prints out the contents of an album object nicely.
	def to_s
		puts "The album #{@name} by #{@artist}. \n"
	end	


  # Method makes an album object; just uses Album.new; really
  # just being a bit explicit and obvious.

	def self.make_album(name,tracks, length, artist, owners)
		Album.new(name, tracks, length, artist, owners)
	end

  # Class Method that builds albums from song object's contents.
  # It returns an array of album objects.  It calls another class method that
  # builds a single album, given the name of that album.



  def self.build_all(data, albums = [])
		#gets one song from each album
		album_names = data.songs.uniq{ |song| song.album}

		#calls build for each album name once and appends result
		album_names.each do |song|
			albums << build_an_album_called(data, song.album)
		end

		albums
  end

  # Class method that takes an album name, it finds all the sounds that are in that album
  # builds up arrays of the song-names (tracks), runtimes, artist names.  These all get used
  # to populate the various attributes of the album object.

  def self.build_an_album_called(data, album_name)
		songs_in_album = data.songs.select { |song| song.album == album_name } #selects all songs with albumn name
		length = songs_in_album.inject(0){|sum,e| sum + e.time } # sums the time attribut of each song in album

		artist = songs_in_album[0].artist #gets artist for first song in album (same for all)

		#gets names of all owners of album (people who own all songs in the album)
		owners = songs_in_album[0].owners.split(" ")	#gets owners of first song
		songs_in_album.drop(1).each do |song|	#for each song in album except the first
			owners = owners & song.owners.split(" ") 	#gets the intersection of the owners of the current song and all previous songs
		end


		Album.make_album(album_name, songs_in_album, length	, artist, owners)
	end

end


