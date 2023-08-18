module ShowLabel
  def show_labels
    if @label.empty?
      puts 'No labels available.'
    else
      @label.each_with_index do |label, index|
        puts "#{index + 1}. Label Title: #{label.title}, Label Color: #{label.color}"
      end
    end
  end
end
