# frozen_string_literal: true

require_relative 'label'
require_relative 'book'

# Class App
class App
  def add_book(params)
    @book = Book.new(params)
    @label = Label.new(params)
    @label.add_item(@book)
  end
end
