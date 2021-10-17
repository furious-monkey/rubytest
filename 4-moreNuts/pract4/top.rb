require_relative 'book'
require_relative 'library'
require_relative 'user'

#Book(name, author, publisher, id, fine, genre)
book1 = Book.new("Good Book", "Good Author", "Good Publisher",1,200,"Good Books", 10)
book2 = Book.new("Great Book", "Great Author", "Great Publisher",2,300,"Great Books", 5)
book3 = Book.new("Excellent Book", "Excellent Author", "Excellent Publisher",3,20,"Excellent Books", 6)
book4 = Book.new("Marvelous Book", "Marvelous Author", "Marvelous Publisher",4,3999,"Marvelous Books", 0)
book5 = Book.new("Wonderful Book", "Wonderful Author", "Wonderful Publisher",5,200,"Wonderful Books", 5)

#User(name,address,id,booksborrowed,haircolor);
user1 = User.new("gbaby", "gtown", 001, 3, "red");
user2 = User.new("kbaby", "ktown", 002, 0, "white");
user3 = User.new("lbaby", "ltown", 003, 10, "black");

#library(name, address, members, books, borrowed, avail)
library = Library.new("THE library", "@library", user1, book1, 13, 26)
library2 = Library.new("THE library", "@library", user2, book1, 13, 26)
library3 = Library.new("THE library", "@library", user3, book1, 13, 26)

puts " "
library.info {puts "~~~~~~~~~~~ ;) ~~~~~~~~~~"}

user1.user_info {puts "~~~~~~~~~~~ ;) ~~~~~~~~~~"}

puts " "

user2.user_info {puts "~~~~~~~~~~~ ;) ~~~~~~~~~~"}

puts " "

user3.user_info {puts "~~~~~~~~~~~ ;) ~~~~~~~~~~"}

puts " "


book1.info {puts "~~~~~~~~~~~ ;) ~~~~~~~~~~"}

puts " "

book1.many_left

if book1.book_avail?
  if user1.how_many_u_got?
    library.member_borrowed
  end
end

puts " "
library.print_books_avail
puts " " 
book1.many_left

if book1.book_avail?
  if user2.how_many_u_got?
    library2.member_borrowed
  end
end


if book1.book_avail?
  if user3.how_many_u_got?
    library3.member_borrowed
  end
end

puts " " 
book1.many_left

