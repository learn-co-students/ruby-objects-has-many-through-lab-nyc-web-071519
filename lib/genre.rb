class Genre
    attr_accessor :name # , :song, :artist

    @@all = []

    def initialize(name)
        @name = name
        # @song = song
        # @artist = artist
        Genre.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song_inst|
            song_inst.genre == self
        end
    end

    def artists
        songs.map do |song_inst|
            song_inst.artist
        end
    end
end