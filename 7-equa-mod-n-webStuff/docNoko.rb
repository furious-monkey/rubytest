#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))


pp doc 
#search for list content?
#elements = doc.xpath("//ul")

#def search_for_list_a(parse_a)
 # parse_a.search("//li").each do |td_element|
  #  a = td_element.search("a")
   # if a.any?
    #  then a.each {|list_a| puts "Found a link list decrip says #{list_a}"} 
     # end    
 # end
#end

#search_for_list_a(elements)



# Search for nodes by css
#doc.css('nav ul.menu li a', 'article h2').each do |link|
  #puts link.content
#end

# Search for nodes by xpath
#doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
 
  #puts link.content
#end

# Or mix and match
#doc.search('nav ul.menu li a', '//article//h2').each do |link|
 # puts link.content
#end

