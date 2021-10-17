class Book
  attr_accessor :name, :author, :publisher, :id, :fine, :genre, :avail

  def initialize(name, author, publisher, id, fine, genre, avail)
    @name = name;
    @author = author;
    @publisher = publisher;
    @id = id;
    @fine = fine;
    @genre = genre;
    @avail = avail;
  end

  def book_name
    puts "The " + @name
  end
  #make this an input function? maybe for fun later
  def info
    puts "        BOOK Info"
    yield
    puts "THEY CALL IT"
    puts "The " + @name
    yield 
    puts "AUTHOR"
    puts "The " + @author
    yield
    puts "FROM"
    puts "The " + @genre + "section"
    yield
  end

  def book_avail?

    if self.avail>1
      puts " "
      puts "book is available"
      true
    else
      puts " "
      puts "sorry this book is all borrowed"
      false
    end
  end

  def this_was_borrowed
    self.avail -=1
  end

  def many_left
    puts "there are " + self.avail.to_s + " copies left"
  end

end

