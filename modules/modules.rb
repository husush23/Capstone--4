require_relative 'include_music'
require_relative 'show_music'
require_relative 'show_genre'
require_relative 'store_music_album'
require_relative 'include_game'
require_relative 'show_games'
require_relative 'show_author'
require_relative 'save_game_author'
require_relative 'load_game_author'
require_relative 'include_book'
require_relative 'show_book'
require_relative 'show_label'
require_relative 'load_book_label'
require_relative 'save_data'

module Modules
  include AddBook
  include ShowBook
  include ShowLabel
  include PreserveData
  include LoadData
  include AddMusic
  include ShowMusic
  include ShowGenres
  include StoreMusicAlbum
  include AddGame
  include ShowGames
  include ShowAuthor
  include PreserveGameAuthor
  include LoadGameAuthor

  def save_tasks
    save_book
    save_label
    save_music
    save_games
    save_author
  end

  def load_tasks
    load_labels
    load_books
    load_genres
    load_music_albums
    load_authors
    load_games
  end
end
