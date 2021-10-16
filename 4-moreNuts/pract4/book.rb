class Book
  attr_accessor :name, :author, :publisher, :unique_id, :fine, :genre, :avail

  def initialize(name, author, publisher, unique_id, fine, genre, avail)
    @name = name;
    @author = author;
    @publisher = publisher;
    @unique_id = unique_id;
    @fine = fine;
    @genre = genre;
    @avail = avail;
  end

  def book_name
    puts "The " + @name
  end

end

