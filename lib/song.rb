class Song
  attr_accessor :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_list = @@genres
    result = {}
    genre_list.collect do |genre|
      if result[genre]
        result[genre] += 1
      else
        result[genre] = 1
      end
    end
    result
  end

  def self.artist_count
    artist_list = @@artists
    result = {}
    artist_list.each do |artist|
      if result[artist]
        result[artist] += 1
      else
        result[artist] = 1
      end
    end
    result
  end

end
