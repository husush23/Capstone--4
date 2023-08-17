require_relative 'lib/book'
require_relative 'lib/label'
require_relative 'lib/music_album'
require_relative 'lib/genre'
require_relative 'lib/game'
require_relative 'lib/author'
require_relative 'modules/modules'
# Application
class App
  attr_accessor  :books, :label

  include Modules

  def initialize
    @books = []
    @label = []
    @genres = []
    @music_albums = []
    @games = []
    @authors = []
    load_collections
  end

  def run_till_to_5(option)
    case option
    when 1
      display_books
    when 2
      display_all_music_albums
    when 3
      display_all_games
    when 4
      display_all_genres
    when 5
      display_labels
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def run_till_to_9(option)
    case option
    when 6
      display_all_authors
    when 7
      add_book
    when 8
      add_music
    when 9
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
