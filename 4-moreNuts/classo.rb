class Testo
  attr_accessor :name, :surname

  def initialize(name, surn)
    @name = name
    @surname = surn
  end

  def man_name
    "mr" + @name + @surname
  end

  def man_name=(name_array)
    @name = name_array[1]
    @surname = name_array[2]
  end
end

mark = Testo.new("hassan","ajaj")
p mark.man_name
mark.man_name = ["mr","hassan","bean"]
p mark.man_name
