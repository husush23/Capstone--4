module AddBook
  def add_book
    publish_date = input_date
    publisher = input_publisher
    cover_state = input_cover_state
    new_book = Book.new(cover_state, publisher, publish_date)
    @books << new_book
    assigned_label = add_label(new_book)
    new_book.add_label(assigned_label)
    puts 'Book Album Added Successfully'
  end

  def input_date
    puts 'Please Enter publish date in yyyy/mm/dd format'
    gets.chomp
  end

  def input_publisher
    puts 'Enter Publisher'
    gets.chomp
  end

  def input_cover_state
    puts 'Enter Cover state'
    gets.chomp
  end

  def add_label(book)
    puts 'Add a label'
    puts 'Enter Label Color'
    color = gets.chomp
    puts 'Enter Label title'
    title = gets.chomp
    label = Label.new(color, title, book.id)
    @label << label
    label
  end
end
