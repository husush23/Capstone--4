require 'rspec'
require_relative '../lib/author'

describe Author do
  describe '#initialize' do
    it 'sets the first_name and last_name attributes' do
      author = Author.new('John', 'Doe')
      expect(author.first_name).to eq('John')
      expect(author.last_name).to eq('Doe')
    end
    it 'initializes an empty items array' do
      author = Author.new('Alice', 'Johnson')
      expect(author.items).to eq([])
    end
  end
  describe 'Genrates random between 1 and 1000' do
    author = Author.new('Jane', 'Smith')
    it 'ID should be greater than 1' do
      expect(author.id).to be >= 1
    end
    it 'ID should be less than 1000' do
      expect(author.id).to be <= 1000
    end
  end
  describe '#add_item' do
    it 'adds an item to the author\'s items' do
      author = Author.new('Bob', 'Brown')
      item = double('item')

      expect(item).to receive(:add_author).with(author)

      author.add_item(item)

      expect(author.items).to include(item)
    end
  end
end
