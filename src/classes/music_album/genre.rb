# frozen_string_literal: true

require_relative './item'

# Represents a genre of music albums.
class Genre
  attr_accessor :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(item)
    item.genre = self
    @items << item
  end
end
