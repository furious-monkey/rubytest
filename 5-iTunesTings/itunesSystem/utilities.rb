#!/usr/bin/ruby -w
# UTILITIES
# Copyright Mark Keane, All Rights Reserved, 2014
# This is fairly crap...

# This module takes a string-name of a song/actor/album and returns the structure with that name.
# Otherwise, it throws errors of different kinds for not finding anything or finding two
# structures with the submitted name.
module Util
   #will fetch object give string that is its name
   def self.fetch(string_item, out = [])
       all = $songs + $actors #+ $albums
	     found = all.select{|obj| string_item == obj.name}
       if found.size == 0
         then MyErr.new("not_found_error", string_item, "fetch").do_it
       elsif   found.size > 1
         then  MyErr.new("multiple_answer_error", string_item, "fetch").do_it
       elsif  found.size == 1
         then   found.first
       end
   end
end


class Array
  def clean_up()
    self.join(" ").split(" ").uniq   #this could be more elegant
  end
end

