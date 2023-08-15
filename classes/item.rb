# frozen_string_literal: true

require 'date'

# Item class
class Item
  attr_accessor :id, :genre, :author, :source, :label

  def initialize(publish_date:, archived: false)
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived
    current_date = Date.today.year
    pub_yar = Date.parse(@publish_date).year
    current_date - pub_yar > 10
  end

  def move_to_archive
    @archived = true if can_be_archived
  end
end


item = Item.new('2019-02-03')
puts item.can_be_archived
