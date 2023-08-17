require "rspec"
require_relative "../lib/music_album"
 
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
end