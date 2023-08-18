module ShowGenres
  def show_all_genres
    @genres.each_with_index do |genre, index|
      puts "#{index + 1}. Genre Name: #{genre.name}"
    end
  end
end
