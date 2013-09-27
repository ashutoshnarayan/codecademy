#!/usr/bin/ruby
# this code creates a histogram
# it checks the number of occurence
# of a word in given sentence
#

puts "Enter the text: "
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1}
frequencies = frequencies.sort_by {|a,b| b}
frequencies.reverse!
frequencies.each do |word,frequency|
	puts word + " " + frequency.to_s
end
