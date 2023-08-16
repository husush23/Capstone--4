# frozen_string_literal: true

require_relative './item'

# Represents a music album item.
class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(title, artist, release_year, on_spotify)
    super(title, artist, release_year)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
