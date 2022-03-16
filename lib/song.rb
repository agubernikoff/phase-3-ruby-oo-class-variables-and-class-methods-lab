require "pry"
class Song
    attr_reader :name, :artist, :genre
    
    @@count=0
    @@artists=[]
    @@genres=[]


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        count= Hash.new
        @@genres.each do |g| 
            if count.keys.include?("#{g}")
            count["#{g}"]+=1
            else count["#{g}"]=1
            end
        end
        count
    end

    def self.artist_count
        count= Hash.new
        @@artists.each do |a| 
            if count.keys.include?("#{a}")
            count["#{a}"]+=1
            else count["#{a}"]=1
            end
        end
        count
    end
end