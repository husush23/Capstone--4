# frozen_string_literal: true

require_relative 'item'

# Class Book
class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(params)
    @cover_state = params[:cover_state]
    @publisher = params[:cover_state]
    super(params)
  end

  def can_be_archived
    super || (@cover_state == 'bad')
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'genre' => @genre,
      'author' => @author,
      'source' => @source,
      'lable' => @lable,
      'publish_date' => @publish_date,
      'cover_state' => @cover_state,
      'publisher' => publisher
    }.to_json(*args)
  end

  def self.json_create(object)
    new(object['genre'], object['author'], object['source'], object['lable'], object['publish_date'],
        object['cover_state'], object['publisher'])
  end
end
