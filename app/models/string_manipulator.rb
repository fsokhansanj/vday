class StringManipulator
	
	attr_accessor :text, :array_of_words, :fucks_given

	def initialize(string)
		@text = string
		@fucks_given = 0
		text_to_array
	end

	def text_to_array
		self.array_of_words = text.split(/\s+/).map(&:downcase)
	end

	def calculate_fucks_given
		return self.fucks_given = 0 if array_of_words.any?{ |word| word =~ /job/i }
		
		array_of_words.each do |word|
			case word
			when 'girlfriend'
				self.fucks_given += 1
			when 'garden'
				self.fucks_given += 1
			end
		end
	end
end