require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@song_count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    @genre = genre
    @@song_count += 1
    @@genres << genre
    @@artists << artist
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
    genres_count = {}
    @@genres.each do |this_genre|
      if !genres_count.include?(this_genre)
        genres_count[this_genre] = 1
      else
        genres_count[this_genre] += 1
      end
    end
    genres_count
  end

  def self.artist_count

    artist_song_count = {}
    @@artists.each do |this_artist|
      if !artist_song_count.include?(this_artist)
        artist_song_count[this_artist] = 1
      else
        artist_song_count[this_artist] += 1
      end
    end
    artist_song_count
  end

end
