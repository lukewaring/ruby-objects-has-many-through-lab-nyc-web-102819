class Artist
    attr_accessor :name, :genres, :songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        self.songs.collect do |song|
            song.genre
        end
    end

    def self.all
        @@all
    end
end
