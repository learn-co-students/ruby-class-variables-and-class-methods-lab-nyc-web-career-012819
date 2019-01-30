require 'pry'


class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
  genres_count = @@genres.group_by {|genre| genre}
    genres_count.map do |key, value|
      genres_count[key] = genres_count[key].count
    end
    genres_count
  end

  def self.artist_count
    artists_count = @@artists.group_by {|artist| artist}
      artists_count.map do |key, value|
        artists_count[key] = artists_count[key].count
      end
      artists_count
  end

end
