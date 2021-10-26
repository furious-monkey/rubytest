#!/usr/bin/ruby -w
# ALBUM
# Copyright Mark Keane, All Rights Reserved, 2014
require_relative 'song.rb'
# Class that encodes details of an album.
class Album < Song
  attr_accessor :name, :tracks, :length, :artist,:owners, :id
  def initialize(name, tracks, length, artist, owners)
    @name = name
    @tracks = tracks
    @length = length
    @artist = artist
    @owners = owners
    @id = name.object_id
  end

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  # Method that prints out the contents of an album object nicely.
  # how do I get then ablum full name and the associated artist??? :((((
  def to_s
    puts "the album #{@name} by #{@artist}. \n"
  end	

  # Method that checks if an object given to it is an album.
  def isa?
    instance_of?(Album)
  end

  # Method makes an album object; just uses Album.new; really
  # just being a bit explicit and obvious.

  def self.make_album(name,tracks, length, artist, owners)
    Album.new(name, tracks, length, artist, owners)
  end

  # Class Method that builds albums from song object's contents.
  # It returns an array of album objects.  It calls another class method that
  # builds a single album, given the name of that album.

  def self.build_all(albums = [])
    album_names = $hash_albums.values.clean_up
    album_names.each {|name, artist| albums << Album.new(name, artist)}
    albums
  end

  # Class method that takes an album name, it finds all the sounds that are in that album
  # builds up arrays of the song-names (tracks), runtimes, artist names.  These all get used
  # to populate the various attributes of the album object.

  def self.build_an_album_called(album_name)
     p "oops...this is missing   ;-)"
  end

end
