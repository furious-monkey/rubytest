def get_name
  puts "What is your surname?:"
  name = gets
  print_thanks
  if check_name_ok?(name)
    then print_new_name(name) 
  end
end

def print_thanks
  puts "Thanks for that."
end

def check_name_ok?(nameo)
  if nameo.length > 5
    then error("way too long a name")
  else true
  end
end

def print_new_name(namer)
  newname = namer.concat("po")
  puts newname
end

def error(sp_message)
  puts "\n**ERROR**:#{sp_message}.\n"
end

get_name


