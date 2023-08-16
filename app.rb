require_relative 'lib/movie'
require_relative 'lib/source'
require_relative 'lib/book'
require_relative 'lib/label'
require_relative 'lib/music_album'
require_relative 'lib/genre'
require_relative 'lib/game'
require_relative 'lib/author'
require_relative 'modules/modules'

class App
  attr_accessor :movies, :books, :label

  include Modules

  def initialize
    @movies = []
    @sources = []
    @books = []
    @label = []
    @genres = []
    @music_albums = []
    @games = []
    @authors = []
    load_collections
  end

  def run_till6(option)
    case option
    when 1
      display_books
    when 2
      display_all_music_albums
    when 3
      display_all_movies
    when 4
      display_all_games
    when 5
      display_all_genres
    when 6
      display_labels
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def run_more_than6(option)
    case option
    when 7
      display_all_authors
    when 8
      display_all_sources
    when 9
      add_book
    when 10
      add_music
    when 11
      add_movie
    when 12
      add_game
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def save_and_exit
    save_collections
    exit
  end
end
