puts "Enter a sentence"

sentence = gets.split( )

hist= {}

sentence.each do |word|
	
	if hist[word]==nil
		h1 = {word=>0}
		hist.merge!(h1)
	end
	hist[word]+=1
end

#histogram

hist.each do |key,value|
	name = key
	count = value
	puts " #{name} "+"*"*(value) 
	
end

