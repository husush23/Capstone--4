require 'json'

module SaveGameAuthor
  GAME_FILE = 'data/games.json'.freeze
  AUTHOR_FILE = 'data/author.json'.freeze


  def save_games
    game_hash = @games.map do |game|
      {
        id: game.id,
        publish_date: game.publish_date,
        multiplayer: game.multiplayer,
        last_played_at: game.last_played_at,
        author: game.author.first_name

      }
    end
    File.write(GAME_FILE, JSON.pretty_generate(game_hash))
  end

  def save_author
    author_hash = @authors.map do |author|
      {
        id: author.id,
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    File.write(AUTHOR_FILE, JSON.pretty_generate(author_hash))
  end
end
