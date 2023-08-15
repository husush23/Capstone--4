# Class: Main
#
# Represents a  class to to display a menu on a CL.
#
# Example:
# Main.new
#
class Main
  def initialize
    puts
    puts 'WELCOME TO THE CATALOG'
    @options = nil
    # @app = App.new(self)
    show_menu
  end

  def show_menu
    puts 'Please choose an option by entering a number:'
    puts '1 -  List all books'
    puts '2 -  List all music albums'
    puts '3 -  List all movies'
    puts '4 -  List of games'
    puts '5 -  List all labels'
    puts '6 -  List all authors'
    puts '7 -  List all sources'
    item_menu
  end

  def item_menu
    puts '8 -  Add a book'
    puts '9 -  Add a music album'
    puts '10 - Add a movie'
    puts '11 - Add a game'
    puts '12 - Exit'
    puts

    list_option
  end

  def add_options
    options = {
      '8' => :add_book,
      '9' => :add_music_album,
      '10' => :add_movie,
      '11' => :add_game,
      '12' => :exit_app
    }

    @options.merge(options)
    user_choice = gets.chomp
    select_option(user_choice)
  end

  def select_option(user_choice)
    method = @options[user_choice]
    if method.nil?
      puts 'Invalid option, please try again!'
      puts
      show_menu
    else
      send(method)
    end
    show_menu
  end

  def list_option
    @options = {
      '1' => :list_all_books,
      '2' => :list_all_music_albums,
      '3' => :list_all_movies,
      '4' => :list_all_games,
      '5' => :list_all_labels,
      '6' => :list_all_authors,
      '7' => :list_all_sources
    }

    add_options
  end

  def list_all_books
    @app.list_all_books
  end

  def list_all_music_albums
    @app.list_all_music_albums
  end

  def list_all_movies
    @app.list_all_movies
  end

  def list_all_games
    @app.list_all_games
  end

  def list_all_labels
    @app.list_all_labels
  end

  def list_all_authors
    @app.list_all_authors
  end

  def list_all_sources
    @app.list_all_sources
  end

  def add_music_album
    @app.add_music_album
  end

  def add_movie
    @app.add_movie
  end

  def add_game
    @app.add_game
  end

  def exit_app
    puts 'Thank you! Have a great day!'
    exit(0)
  end
end
Main.new
