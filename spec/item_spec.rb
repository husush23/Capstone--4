require_relative '../lib/item'

RSpec.describe Item do
  describe '#check if can be archived' do
    it 'should return true' do
      item = Item.new(publish_date: '2009-02-03', archived: true)
      can_be_archived = item.can_be_archived
      expect(can_be_archived).to be_truthy
    end
    it 'Shoul return false' do
      item = Item.new(publish_date: '2019-02-03', archived: true)
      can_be_archived = item.can_be_archived
      expect(can_be_archived).to be_falsey
    end
  end
end
