require "rspec"
require_relative "../lib/book"

describe Book do
    describe '#initialize' do
        it 'sets the cover_state and publisher attributes' do
          book = Book.new('good', 'Example Publisher', '2023-08-17')
          expect(book.cover_state).to eq('good')
          expect(book.publisher).to eq('Example Publisher')
        end
    
        it 'inherits attributes from the parent class' do
          book = Book.new('good', 'Example Publisher', '2023-08-17', 500)
          expect(book.publish_date).to eq('2023-08-17')
          expect(book.id).to eq(500)
        end
      end

      describe '#can_be_archived' do
        it 'returns true if the book can be archived' do
          book = Book.new('bad', 'Example Publisher', '2010-05-20')
          expect(book.can_be_archived).to be(true)
        end
    
        it 'returns false if the book cannot be archived due to cover_state' do
          book = Book.new('bad', 'Example Publisher', '2019-08-17')
          expect(book.can_be_archived).to be(true)
        end
    
        it 'returns false if the book cannot be archived due to publish_date' do
          book = Book.new('good', 'Example Publisher', '2022-11-30')
          expect(book.can_be_archived).to be(false)
        end
      end
end