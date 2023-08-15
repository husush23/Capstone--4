require_relative 'src/classes/app'
@app = App.new
@parameters = {}
def show_menu
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all music albums'
  puts '3 - List of games'
  puts '4 - List all genres'
  puts '5 - List all labels'
  puts '6 - List all authors'
  add_options
end

def add_options
  puts '7 - Add a book'
  puts '8 - Add a music album'
  puts '9 - Add a game'
  puts '10 - Exit'
  user_choice = gets.chomp.to_i
  select_option(user_choice)
end

def select_option(user_choice)
  case user_choice
  when 1..6
    list_item(user_choice)
  when 7..9
    add_item(user_choice)
  when 10
    exit
  else
    show_menu
  end
end

def list_item(user_choice)
  case user_choice
  when 1 then puts ' # list_all_books'
  when 2 then puts ' # list_all_music_albums'
  when 3 then puts ' # list_all_games'
  when 4 then puts ' # list_all_genres'
  when 5 then puts ' # list_all_labels'
  when 6 then puts ' # list_all_authors'
  end
  show_menu
end

def add_item(user_choice)
  case user_choice
  when 7
    ask_parameters('Book')
    @app.add_book(@parameters)
    # p Genre.new(params)
    # p Label.new(params)
    # p Item.new(params)
  when 8
    ask_parameters('Album')
    # p Genre.new(params)
    # p Label.new(params)
    # p Item.new(params)
  when 9
    ask_parameters('Game')
    # p Genre.new(params)
    # p Label.new(params)
    # p Item.new(params)
  end
  show_menu
end

def exit
  puts 'Goodbye!'
end

def ask_for(type, message)
  print "Type [#{type}] #{message}: "
  gets.chomp
end

def ask_parameters(type)
  ask_parameters_general(type)
  case type
  when 'Book'
    ask_parameters_book(type)
  when 'Album'
    ask_parameters_album(type)
  when 'Game'
    ask_parameters_game(type)
  end
  @parameters
end

def ask_parameters_general(type)
  @parameters[:genre] = ask_for(type, 'Genre name')
  @parameters[:title] = ask_for(type, 'Label title')
  @parameters[:color] = ask_for(type, 'Label color')
  @parameters[:publish_date] = ask_for(type, 'publish date (yyyy/mm/dd)')
end

def ask_parameters_book(type)
  @parameters[:first_name] = ask_for(type, 'Author first name')
  @parameters[:last_name] = ask_for(type, 'Author last name')
  @parameters[:publisher] = ask_for(type, 'Book publisher')
  @parameters[:cover_state] = ask_for(type, 'Book cover state')
end

def ask_parameters_album(type)
  @parameters[:on_spotify] = ask_for(type, 'Album is on spotify (y/n)').downcase == 'y'
end

def ask_parameters_game(type)
  @parameters[:publisher] = ask_for(type, 'Book publisher')
  @parameters[:cover_state] = ask_for(type, 'Book cover state')
end

def main
  show_menu
end

main
