module AddGame
  def add_game
    puts 'Please Enter publish date in the following format: yyyy/mm/dd'
    publish_date = gets.chomp
    puts 'Is the game multiplayer?'
    multiplayer = gets.chomp
    puts 'Enter last played date'
    last_played_at = gets.chomp
    game = Game.new(publish_date, multiplayer, last_played_at)
    @games << game
    author = add_author
    game.add_author(author)
    @authors << author
    puts 'Game Added Successfully'
  end

  def add_author
    puts 'Author\'s First Name: '
    first_name = gets.chomp
    puts 'Author\'s Last Name: '
    last_name = gets.chomp
    Author.new(first_name, last_name)
  end
end
