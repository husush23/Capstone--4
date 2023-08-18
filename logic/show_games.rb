module ShowGames
  def show_all_games
    @games.each_with_index do |game, index|
      author_name = "#{game.author.first_name} #{game.author.last_name}"
      puts "#{index + 1}. Multiplayer: #{game.multiplayer} Last Played: #{game.last_played_at}
      Publish Date: #{game.publish_date} Author: #{author_name}"
    end
  end
end
