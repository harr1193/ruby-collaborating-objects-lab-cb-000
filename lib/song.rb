class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    parse = file.split(" - ")
    name = parse[0]
    song_name = parse[1]
    song = self.new(song_name)
    song
  end
end
