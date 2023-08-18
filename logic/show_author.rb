module ShowAuthor
  def show_all_authors
    @authors.each_with_index do |author, index|
      puts "#{index + 1}. First Name: #{author.first_name}, Last Name: #{author.last_name}"
    end
  end
end
