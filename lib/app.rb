require_relative 'book'
require_relative 'label'
require_relative 'music_album'
require_relative 'genre'
require_relative 'game'
require_relative 'author'
require_relative '../logic/combined'

class App
  attr_accessor :books, :label, :games, :authors, :genres, :music_albums

  include Modules

  def initialize
    @books = []
    @label = []
    @genres = []
    @music_albums = []
    @games = []
    @authors = []
    load_tasks
  end

  def run_one(number)
    case number
    when 1
      show_books
    when 2
      show_all_music_albums
    when 3
      show_all_games
    when 4
      show_all_genres
    when 5
      show_labels
    else
      puts 'Thank you!'
      save_and_exit
    end
  end

  def run_two(number)
    case number
    when 6
      show_all_authors
    when 7
      add_game
    when 8
      add_music
    when 9
      add_book
    else
      puts 'Thank you'
      save_and_exit
    end
  end

  def save_and_exit
    save_tasks
    exit
  end
end
