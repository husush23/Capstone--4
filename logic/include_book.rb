module AddBook
  def add_book
    puts 'Please Enter publish date in yyyy/mm/dd format'
    publish_date = gets.chomp

    puts 'Enter Publisher'
    publisher = gets.chomp

    puts 'Enter Cover state'
    cover_state = gets.chomp

    new_book = Book.new(cover_state, publisher, publish_date)
    @books << new_book
    assigned_label = add_label(new_book)
    new_book.add_label(assigned_label)
    puts 'Book Album Added Successfully'
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
