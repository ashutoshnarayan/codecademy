#!/usr/bin/ruby

# this snippet adds  a new movie to hash, updates the rating for an existing movie
# display the movies and ratings already in the hash, deletes a movie from the hash
# if it doesn't receive any of those command it errors out

movies = {
    ddlj: 4,
    dtph: 3,
    pardes: 1
}
puts "What would you like to do?"
puts "Type 'add' to add a movie"
puts "Type 'delete' to delete a movie"
puts "Type 'update' to update a movie"
puts "Type 'display' to display a movie"

choice = gets.chomp.downcase
case choice
when 'add'
    puts "What movie do you want to add ?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What is the rating? (0-4)"
        rating = gets.chomp
        movies[title.intern]= rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts "That movie already exists! Its raing is #{movies[title.to_sym]}"
    end
when 'update'
    puts "Which movie do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "movie not found"
    else
        puts "What is the new rating ? (0-4)"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been updated with new rating of #{rating}"
    end
when 'display'
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when 'delete'
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "movie not found"
    else
        movies.delete(title.to_sym)
        puts "#{title} has been removed"
    end
else
    puts "Sorry! I did not understand you."
end
