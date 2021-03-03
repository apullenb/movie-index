movies = {
  NoteBook: 4.8
  }



def movie_index(choice, movies)
case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp.to_sym
  puts "What rating does the movie have? "
  rating = gets.chomp.to_i
    if
      movies[title].nil?
      movies[title] = rating
      puts "#{title} with a rating of #{rating} has been added."
    else 
      puts "This Movie Already Exists!"
    end

when "update"
  puts "What is the Title of the Movie You Want to Update?"
  title = gets.chomp.to_sym
    if movies[title].nil?
      puts "Error: #{title} Does not Exist!"
    else 
      puts "What is the new rating for #{title}?"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "The rating for #{title} has been updated."
    end
when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}" } 
when "delete"
  puts "What Movie Would You Like to Delete?"
  title = gets.chomp.to_sym
    if 
      movies[title].nil?
      puts "Error: #{title} does not exist!"
    else 
      movies.delete(title)
      puts "#{title} has been deleted."
    end
else
  puts "Error! Try Again!"
  puts "What would you like to do?"
  choice = gets.chomp
  movie_index(choice, movies)
  end
end

puts "What would you like to do?"
choice = gets.chomp
movie_index(choice, movies)
