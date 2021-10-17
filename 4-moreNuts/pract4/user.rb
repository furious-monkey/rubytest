class User 
  attr_accessor :name, :address, :id, :books_boro, :hair_color

  def initialize(name, address, id, books_boro, hair_color)
    @name = name;
    @address = address;
    @id = id;
    @books_boro = books_boro;
    @hair_color = hair_color;
  end
 
  def user_name
    puts "They name is " +@name
  end
  def user_info
    puts "        USER INFO "
    yield
    puts "They name is " + @name
    yield
    puts "They house is @" + @address
    yield
    puts "They borrowed: No. of books " + @books_boro.to_s
    yield
    puts "They hair color " + @hair_color
  end

  def how_many_u_got?
    if self.books_boro > 5
      puts "WARNING: " + @name + " Yo, bring back my books mann"
      false
    else 
      puts "PASS: " + @name + " Yes, you may borrow a book dawg"
      true
    end
  end

  def borrowed
    self.books_boro +=1
  end

end

