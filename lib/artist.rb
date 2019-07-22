class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song_inst|
            song_inst.artist == self
        end
    end

    def genres
        songs.map do |song_inst|
            song_inst.genre
        end
    end
end