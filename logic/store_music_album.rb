require 'json'

module StoreMusicAlbum
  MUSIC_FILE = 'data/music_albums.json'.freeze
  GENRE_FILE = 'data/genres.json'.freeze

  def save_music
    save_music_albums
    save_genres
  end

  def save_music_albums
    json_data = @music_albums.map(&:to_hash)
    File.write(MUSIC_FILE, JSON.pretty_generate(json_data))
  end

  def save_genres
    json_data = @genres.map(&:to_hash)
    File.write(GENRE_FILE, JSON.pretty_generate(json_data))
  end
end
