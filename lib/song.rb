class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parse = file.split(" - ")
    name = parse[0]
    song_name = parse[1]
    song = self.new(song_name)
    song.artist_name = name
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end
