require_relative 'book'
require_relative 'library'
require_relative 'user'

#Book(name, author, publisher, id, fine, genre, avail)
book1 = Book.new("Good Book", "Good Author", "Good Publisher",1,200,"Good Books", 5)
book2 = Book.new("Great Book", "Great Author", "Great Publisher",2,300,"Great Books", 8)
book3 = Book.new("Excellent Book", "Excellent Author", "Excellent Publisher",3,20,"Excellent Books", 10)
book4 = Book.new("Marvelous Book", "Marvelous Author", "Marvelous Publisher",4,3999,"Marvelous Books", 1)
book5 = Book.new("Wonderful Book", "Wonderful Author", "Wonderful Publisher",5,200,"Wonderful Books", 2)

#User(name,address,id,booksborrowed,haircolor);
user1 = User.new("gbaby", "gtown", 001, 3, "red");
user2 = User.new("kbaby", "ktown", 002, 0, "white");
user3 = User.new("lbaby", "ltown", 003, 10, "black");

#library(name, address, members, books, borrowed, avail)
library = Library.new("THE library", "@library", user1, book1, 13, 26)

user1.user_name

library.member_borrowed


