require_relative 'thanks'
require_relative 'error'

def get_name
  puts "What is your surname?:"
  name = gets
  print_thanks
  if check_name_ok?(name)
    then print_new_name(name) 
  end
end

def check_name_ok?(nameo)
  if nameo.length > 5
    then error("way too long a name")
  else true
  end
end

def print_new_name(namer)
  newname = namer.chomp.concat("po")
  puts "k, yer new name is:"
  puts newname
end

get_name

