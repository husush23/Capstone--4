# frozen_string_literal: true

require_relative 'storage'

# Class Label
class Label
  attr_accessor :color, :title, :id

  def initialize(_params)
    @id = id || Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.label = self
    @items << item unless @items.include?(item)
    storage = Storage.new
    storage.save_data('books', @items)
  end
end
