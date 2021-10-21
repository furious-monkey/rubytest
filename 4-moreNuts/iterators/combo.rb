def combos(array1, array2, n=6)
  array1.each do |ele1|
    array2.each do |ele2|
      n+=1
      puts "#{ele1}, #{ele2}, on #{n}"
      end
  end
end

combos(["a","b","c"],[1,2,3])
