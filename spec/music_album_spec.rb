require 'rspec'
require_relative '../lib/music_album'

describe MusicAlbum do
  describe '#initialize' do
    it 'sets the on_spotify and publish_date attributes' do
      music_album = MusicAlbum.new(on_spotify: true, publish_date: '2023-08-17')
      expect(music_album.on_spotify).to eq(true)
      expect(music_album.publish_date).to eq('2023-08-17')
    end

    it 'inherits attributes from the parent class' do
      music_album = MusicAlbum.new(on_spotify: true, publish_date: '2023-08-17', id: 500)
      expect(music_album.id).to eq(500)
      expect(music_album.publish_date).to eq('2023-08-17')
    end
  end

  describe '#can_be_archived?' do
    it 'returns false if the music album cannot be archived due to on_spotify' do
      music_album = MusicAlbum.new(on_spotify: false, publish_date: '2019-08-17')
      expect(music_album.can_be_archived?).to be(false)
    end

    it 'returns false if the music album cannot be archived due to publish_date' do
      music_album = MusicAlbum.new(on_spotify: true, publish_date: '2022-11-30')
      expect(music_album.can_be_archived?).to be(false)
    end
  end

  describe '#to_hash' do
    it 'returns a hash representation of the music album' do
      genre = Genre.new(name: 'Pop', id: 123)
      music_album = MusicAlbum.new(on_spotify: true, publish_date: '2023-08-17')
      music_album.genre = genre
      expected_hash = {
        'id' => music_album.id,
        'publish_date' => '2023-08-17',
        'on_spotify' => true,
        'genre' => 'Pop'
      }
      expect(music_album.to_hash).to eq(expected_hash)
    end
  end
end
