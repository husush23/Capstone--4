require_relative './lib/app'

class Main
  def initialize
    @app = App.new
    alert
  end

  def alert
    puts 'Catalogue of your things!'
    loop do
      display_selections
      option = indentify_numbers
      if option >= 1 && option < 6
        @app.run_one(option)
      else
        @app.run_two(option)
      end
      break if option == 10
    end
  end

  def display_selections
    puts 'Select one of the following options: '
    puts '1. - List all books in the record'
    puts '2. - List all music albums saved'
    puts '3. - List all games in the record'
    puts "4. - List all genres "
    puts "5. - List all labels "
    puts "6. - List all authors "
    puts '7. - Add a game'
    puts '8. - Add a music album'
    puts '9. - Add a book'
    puts '10. - Exit'
  end

  def indentify_numbers
    print 'Enter a number: '
    number = gets.chomp.to_i
    while number.nil? || number < 1 || number > 10
      puts 'Please enter a number from 1 to 10!'
      print 'Enter a number: '
      number = gets.chomp.to_i
    end
    number
  end
end

Main.new
