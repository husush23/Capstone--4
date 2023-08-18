require 'json'

module SaveData
  BOOK_FILE = 'data/book.json'.freeze
  LABEL_FILE = 'data/label.json'.freeze


  def save_book
    books_hash = @books.map do |book|
      {
        cover_state: book.cover_state,
        publisher: book.publisher,
        publish_date: book.publish_date,
        id: book.id,
        label: book.label.title
      }
    end
    File.write(BOOK_FILE, JSON.pretty_generate(books_hash))
  end

  def save_label
    label_hash = @label.map do |label|
      {
        id: label.id,
        color: label.color,
        title: label.title
      }
    end
    File.write(LABEL_FILE, JSON.pretty_generate(label_hash))
  end
end
