movies = {
    "Star Wars" => 4.0,
    "Blah" => 2.0
}
puts "What would you lie to do? Add, Update, Display or Delete?"
    choice = gets.chomp
case choice
    when "add"
        puts "Please give me the movie title:"
        title = gets.chomp
        if movies[title.to_sym] == nil
            puts "Already exists!"
        end
        puts "What rating would you give that out of 5.0?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has just been added with a rating of #{rating} out of 5"
    when "update"
        puts "What movie would you like to update?"
        title = gets.chomp
        if movies[title] == nil
            puts "Sorry that isn't in the database"
        else puts "What rating out of 5.0?"
            rating = gets.chomp
            movies[title.to_sym] = rating.to_i
        end
    when "display"
        movies.each do |movie, rated|
            puts movie + ": " + rated.to_s
        end
    when "delete"
        puts "What title would you like to delete?"
        title = gets.chomp
        if movies[title] == nil
            puts "Sorry that isn't in the database"
        else movies.delete(title)
            puts "#{title} has been deleted from the database"
    end
else
    puts "Errors!"
end
