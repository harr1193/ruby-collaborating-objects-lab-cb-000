class MP3Importer
  attr_accessor :path, :files
  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.grep(/mp3/)
  end

  def import
    files.each { |file|  }
  end
end
