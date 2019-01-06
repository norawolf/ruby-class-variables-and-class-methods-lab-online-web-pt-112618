require 'pry'
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

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

  def self.artist_count
    artist_count = Hash.new(0)
    # why does this work when calling Hash.new but not simply setting equal to {}?

    @@artists.each do |artist|
      artist_count[artist] += 1 # why does this work instead of having to use a condition to check if the unique artist key has already been created?
    end
      artist_count



    # another way
    # @@artists.uniq.map { |artist| [artist, @@artists.count(artist)] }.to_h
  end

  def self.genre_count


    # genre_count = Hash.new(0)
    # @@genres.each do |genre|
    #   genre_count[genre] += 1
    # end
    # genre_count


    @@genres.uniq.map { |genre| [genre, @@genres.count(genre)] binding.pry}.to_h
    
  end

end
