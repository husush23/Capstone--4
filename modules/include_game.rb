module AddGame
  def add_game
    publish_date = input_date
    multiplayer = input_multiplayer
    last_played_at = input_last_played_at
    game = Game.new(publish_date, multiplayer, last_played_at)
    @games << game
    author = add_author
    game.add_author(author)
    @authors << author
    puts 'Game Added Successfully'
  end

  def input_date
    puts 'Please Enter publish date in the following format: yyyy/mm/dd'
    gets.chomp
  end

  def input_multiplayer
    puts 'Is the game multiplayer? Press 1 for yes, 2 for no'
    multiplayer = gets.chomp.to_i
    while multiplayer.nil? || multiplayer < 1 || multiplayer > 2
      puts 'Please input a number between 1 and 2'
      multiplayer = gets.chomp.to_i
    end
    multiplayer == 1
  end

  def input_last_played_at
    puts 'Please Enter last played date in the following format: yyyy/mm/dd'
    gets.chomp
  end

  def add_author
    puts 'Author\'s First Name: '
    first_name = gets.chomp
    puts 'Author\'s Last Name: '
    last_name = gets.chomp
    Author.new(first_name, last_name)
  end
end
