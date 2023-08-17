require_relative 'include_music'
require_relative 'display_music'
require_relative 'display_genre'
require_relative 'store_music_album'
require_relative 'include_game'
require_relative 'show_games'
require_relative 'display_author'
require_relative 'preserve_game_author'
require_relative 'load_game_author'
require_relative 'include_book'
require_relative 'display_book'
require_relative 'display_label'
require_relative 'load_book_label'
require_relative 'preserve_data'

module Modules
  include AddBook
  include DisplayBook
  include DisplayLabel
  include PreserveData
  include LoadData
  include AddMusic
  include DisplayMusic
  include DisplayGenres
  include StoreMusicAlbum
  include AddGame
  include ShowGames
  include DisplayAuthor
  include PreserveGameAuthor
  include LoadGameAuthor

  def save_collections
    save_book
    save_label
    save_music
    save_games
    save_author
  end

  def load_collections
    load_labels
    load_books
    load_genres
    load_music_albums
    load_authors
    load_games
  end
end
