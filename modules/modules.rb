
require_relative 'add_game'
require_relative 'display_game'
require_relative 'display_author'
require_relative 'preserve_game_author'
require_relative 'load_game_author'



module Modules
 
  include AddGame
  include DisplayGame
  include DisplayAuthor
  include PreserveGameAuthor
  include LoadGameAuthor

  def save_collections
    save_movies
    save_source
    save_book
    save_label
    save_music
    save_games
    save_author
  end

  def load_collections
    load_sources
    load_movies
    load_labels
    load_books
    load_genres
    load_music_albums
    load_authors
    load_games
  end
end