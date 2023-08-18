require 'json'

module LoadData
  BOOK_FILE = 'data/book.json'.freeze
  LABEL_FILE = 'data/label.json'.freeze

  def load_labels
    label_hash = []
    return label_hash unless File.exist?(LABEL_FILE)

    file = File.read(LABEL_FILE)
    label_hash = JSON.parse(file)

    label_hash.each do |label|
      label_obj = Label.new(label['color'], label['title'])
      label_obj.id = label['id']
      @label << label_obj
    end
  end

  def load_books
    book_hash = []
    return book_hash unless File.exist?(BOOK_FILE)

    file = File.read(BOOK_FILE)
    book_hash = JSON.parse(file)
    book_hash.each do |book|
      book_obj = Book.new(book['cover_state'], book['publisher'], book['publish_date'], book['id'])
      label_obj = @label.find { |label| label.title == book['label'] }
      book_obj.add_label(label_obj)
      @books << book_obj
    end
  end
end
