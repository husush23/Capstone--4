require "rspec"
require_relative "../lib/label"

describe Label do
    describe '#initialize' do
        it 'sets the color and title attributes' do
          label = Label.new('red', 'Thriller')
          expect(label.color).to eq('red')
          expect(label.title).to eq('Thriller')
        end
    
        it 'generates an ID between 1 and 1000 if not provided' do
          label = Label.new('blue', 'Mystery')
          expect(label.id).to be >= 1
          expect(label.id).to be <= 1000
        end
    
        it 'uses the provided ID if provided' do
          label = Label.new('green', 'Science Fiction', 500)
          expect(label.id).to eq(500)
        end
    
        it 'initializes an empty items array' do
          label = Label.new('yellow', 'Fantasy')
          expect(label.items).to eq([])
        end
      end
end