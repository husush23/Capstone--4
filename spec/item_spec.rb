require "rspec"
require_relative '../lib/item'

describe Item do
    describe '#initialize' do
        it 'sets the publish_date attribute' do
          item = Item.new('2023-08-17')
          expect(item.publish_date).to eq('2023-08-17')
        end
    
        it 'generates an ID between 1 and 1000 if not provided' do
          item = Item.new('2023-08-17')
          expect(item.id).to be >= 1
          expect(item.id).to be <= 1000
        end
    
        it 'uses the provided ID if provided' do
          item = Item.new('2023-08-17', 500)
          expect(item.id).to eq(500)
        end
      end
      describe '#add_genre' do
        it 'sets the genre attribute' do
          item = Item.new('2023-08-17')
          item.add_genre('Fantasy')
          expect(item.genre).to eq('Fantasy')
        end
      end
      
    describe "Can be archive?" do
        item = Item.new("2021-01-05")
        it "Should return false" do
            expect(item.can_be_archived?).to be_falsey
        end
        it "Should return true" do
            item = Item.new("2009-01-05")
            expect(item.can_be_archived?).to be_truthy
            expect(item.move_to_archive).to be_truthy
        end
        it "Should return true" do
            item = Item.new("2009-01-05")
            expect(item.move_to_archive).to be_truthy
        end
        it "Should return false" do
            item = Item.new("2019-01-05")
            expect(item.move_to_archive).to be_falsey
        end
    end
end
