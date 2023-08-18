module FetchMusicGenre
  MUSIC_FILE = 'data/music_albums.json'.freeze
  GENRE_FILE = 'data/genres.json'.freeze

  def load_music_albums
    music_albums_hash = []
    return music_albums_hash unless File.exist?(MUSIC_FILE)

    file = File.read(MUSIC_FILE)
    music_albums_hash = JSON.parse(file)

    music_albums_hash.each do |music|
      music_obj = MusicAlbum.new(publish_date: music['publish_date'], on_spotify: music['on_spotify'],
                                 id: music['id'])
      genre_obj = @genres.find { |genre| genre.name == music['genre'] }
      music_obj.add_genre(genre_obj)
      @music_albums << music_obj
    end
  end

  def load_genres
    genre_hash = []
    return genre_hash unless File.exist?('data/genres.json')

    file = File.read(GENRE_FILE)
    genre_hash = JSON.parse(file)
    genre_hash.each do |genre|
      genre_obj = Genre.new(name: genre['name'], id: genre['id'])
      @genres << genre_obj
    end
  end
end
