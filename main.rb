require_relative 'classes/app'

def main
  manager = GameManager.new

  loop do
    puts "Options:"
    puts "1. Add Game"
    puts "2. List All Authors"
    puts "3. List All Games"
    puts "4. Save Data to JSON"
    puts "5. Exit"
    print "Select an option: "
    choice = gets.chomp.to_i

    case choice
    when 1
      print "Enter publish date: "
      publish_date = gets.chomp
      print "Is multiplayer? (true/false): "
      multiplayer = gets.chomp == 'true'
      print "Enter last played date: "
      last_played_at = gets.chomp
      print "Enter author's first name: "
      author_first_name = gets.chomp
      print "Enter author's last name: "
      author_last_name = gets.chomp

      author = manager.authors.find { |a| a.first_name == author_first_name && a.last_name == author_last_name }
      if author.nil?
        author = Author.new(author_first_name, author_last_name)
        manager.authors << author
      end

      manager.add_game(publish_date, multiplayer, last_played_at, author)
      puts "Game added successfully!"
    when 2
      manager.list_all_authors
    when 3
      manager.list_all_games
    when 4
      manager.save_data_to_json
      puts "Data saved to JSON files."
    when 5
      break
    else
      puts "Invalid option. Please select a valid option."
    end
  end
end

main
