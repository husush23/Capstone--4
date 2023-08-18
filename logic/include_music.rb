module AddMusic
  def add_music
    puts 'Enter publish date'
    publish_date = gets.chomp
    puts 'Is this album is in spotify?'
    on_spotify = gets.chomp
    music_album = MusicAlbum.new(publish_date: publish_date, on_spotify: on_spotify)
    @music_albums << music_album
    genre = add_genre
    music_album.add_genre(genre)
    puts 'Music  Successfully added '
  end

  def return_genre(input)
    @genres.each_with_index do |genre, _index|
      return genre if genre.name == input
    end
    new_genre = Genre.new(name: input)
    @genres << new_genre
    new_genre
  end

  def add_genre
    puts 'Add a genre'
    puts 'Enter Genre Name'
    input = gets.chomp
    return_genre(input)
  end
end
