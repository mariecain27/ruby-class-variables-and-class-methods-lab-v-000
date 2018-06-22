require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists =[]
  
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
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    new = self.genres
    new.each do |key|
      genre_hash.store(key, self.count )
 #     binding.pry
    end
    genre_hash
  end
  
  
  def artist_count
    
  end
  
end