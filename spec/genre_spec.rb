require 'rspec'
require_relative '../lib/genre'

describe Genre do
  describe '#initialize' do
    it 'sets the name attribute' do
      genre = Genre.new(name: 'Science Fiction')
      expect(genre.name).to eq('Science Fiction')
    end

    it 'generates an ID between 1 and 1000 if not provided' do
      genre = Genre.new(name: 'Mystery')
      expect(genre.id).to be >= 1
      expect(genre.id).to be <= 1000
    end

    it 'uses the provided ID if provided' do
      genre = Genre.new(name: 'Fantasy', id: 500)
      expect(genre.id).to eq(500)
    end

    it 'initializes an empty items array' do
      genre = Genre.new(name: 'Adventure')
      expect(genre.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'adds an item to the genre\'s items' do
      genre = Genre.new(name: 'Romance')
      item = double('item')

      expect(item).to receive(:add_genre).with(genre)

      genre.add_item(item)

      expect(genre.items).to include(item)
    end
  end

  describe '#to_hash' do
    it 'returns a hash representation of the genre' do
      genre = Genre.new(name: 'Horror', id: 123)
      expected_hash = {
        'id' => 123,
        'name' => 'Horror'
      }
      expect(genre.to_hash).to eq(expected_hash)
    end
  end
end
