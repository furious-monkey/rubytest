#library(name, address, members, books, borrowed, avail)

class Library
  attr_accessor :name, :address, :members, :book, :borrowed, :avail

  def initialize(name, address, members, book, borrowed, avail)
    @name = name;
    @address = address;
    @members = members;
    @book = book;
    @borrowed = borrowed;
    @avail = avail;
  end

  def member_borrowed
    p "#{@members.user_name} borrowed #{@book.book_name}"
  end

end

