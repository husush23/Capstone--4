require_relative 'item'
require_relative 'game'
require_relative 'author'
require 'json'

class GameManager
  attr_accessor :items, :authors

  def initialize
    @items = []
    @authors = []
  end

  def add_game(publish_date, multiplayer, last_played_at, author)
    game = Game.new(publish_date, multiplayer, last_played_at)
    game.author = author
    author.add_item(game)
    @items << game
  end

  def list_all_authors
    @authors.each do |author|
      puts "#{author.first_name} #{author.last_name}"
    end
  end

  def list_all_games
    @items.each do |item|
      puts "Game: #{item.label}, Author: #{item.author.first_name} #{item.author.last_name}"
    end
  end

  def save_data_to_json
    File.open('games.json', 'w') do |file|
      game_data = @items.map do |item|
        {
          label: item.label,
          genre: item.genre,
          author: "#{item.author.first_name} #{item.author.last_name}",
          multiplayer: item.multiplayer,
          last_played_at: item.last_played_at,
          publish_date: item.publish_date,
          archived: item.archived
        }
      end
      file.write(JSON.pretty_generate(game_data))
    end

    File.open('authors.json', 'w') do |file|
      author_data = @authors.map do |author|
        {
          id: author.id,
          first_name: author.first_name,
          last_name: author.last_name
        }
      end
      file.write(JSON.pretty_generate(author_data))
    end
  end
end

# Example usage
# manager = GameManager.new

# author1 = Author.new('John', 'Doe')
# author2 = Author.new('Jane', 'Smith')

# manager.authors << author1
# manager.authors << author2

# manager.add_game('2010-02-09', true, '2023-01-01', author1)
# manager.add_game('2015-06-15', false, '2022-05-10', author2)

# manager.save_data_to_json
# manager.list_all_authors
# manager.list_all_games
