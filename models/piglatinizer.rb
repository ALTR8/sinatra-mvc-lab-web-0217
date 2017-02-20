require 'pry'

class PigLatinizer

	def to_pig_latin(phrase)
		phrase.split.map {|word| piglatinize(word)}.join(" ")
	end



	


	def piglatinize(word)
		vowels = ["a", "e", "i", "o", "u"]

		if vowels.include?(word[0].downcase)
			word << "way"
		else 
			vowel_split = word.split(/([aeiou].*)/)
			word = vowel_split[1] + vowel_split[0] + "ay"
		end
	end
end

		

