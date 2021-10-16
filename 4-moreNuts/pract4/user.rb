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
    puts "mr/mrs" + @name
  end

end

