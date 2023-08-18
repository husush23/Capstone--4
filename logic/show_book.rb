module ShowBook
  def show_books
    if @books.empty?
      puts 'No books in the record.'
    else
      @books.each_with_index do |book, index|
        label_title = book.label ? book.label.title : 'N/A'
        puts "#{index + 1}. Publisher: #{book.publisher}, Publish Date: #{book.publish_date}, Label: #{label_title}"
      end
    end
  end
end
