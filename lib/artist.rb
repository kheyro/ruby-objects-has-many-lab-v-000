class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@song_count = 0
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    @@song_count += 1
    @songs << new_song
  end

  def self.song_count
    @@song_count
  end
end
