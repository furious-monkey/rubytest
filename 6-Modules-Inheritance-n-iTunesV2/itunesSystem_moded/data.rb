class DataBit
  attr_accessor :songs, :albums, :actors, :owners
  def initialize()
    @songs = []
    @albums = []
    @actors = []
    @owners = Hash.new
  end
  def songs=(x)
    @songs = x
  end
  def albums=(x)
    @albums = x
  end
  def actors=(x)
    @actors = x
  end
  def owners=(x)
    @owners = x
  end
end
