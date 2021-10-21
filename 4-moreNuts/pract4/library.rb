#library(name, address, members, books, borrowed, avail)

class Library
  attr_accessor :name, :address, :members, :book, :borrowed, :avail

  def initialize(name, address, members, book, borrowed, avail)
    @name = name;
    @address = address;
    @members = [];
    @book = [];
    @borrowed = borrowed;
    @avail = avail;
  end

  def info
    puts "        LIBRARY info"
    yield
    puts @name
    yield
    puts @address
    yield
    puts "Total books in stock " + @avail.to_s
    yield
  end


  def member_borrowed
      puts "#{@members.user_name}" + " borrowed "
      puts "#{@book.book_name}"
      self.borrowed +=1
      self.avail -=1 
      "#{@book.this_was_borrowed}"
      "#{@members.borrowed}"
  end

  def print_books_avail
    puts "total books left " + self.avail.to_s;
  end

end

