class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    self.save
  end
  
  def self.all 
    @@all 
  end
  def save
    @@all << self
  end
  def self.create(name)
    artist = new(name)
    artist.save 
    artist
  end
  
end