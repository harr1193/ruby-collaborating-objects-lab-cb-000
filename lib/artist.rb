class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self.name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create(name)
    self.new(name)
  end

  def self.find_by_name(name)
    artist = @@all.find { |artist| artist.name == name }
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) == nil ? self.create(name) : self.find_by_name(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

  def songs
    @songs
  end

end
