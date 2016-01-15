class StringManipulator

	attr_accessor :user_submitted_string, :array_of_words, :fucks_given

	def initialize(string)
		@user_submitted_string = string
		@fucks_given = 0
		text_to_array
		@counts = Array.new
		@key_words = ["job", "girlfriend", "car", "loan"]
	end

	def text_to_array
		self.array_of_words = user_submitted_string.split(/\s+/).map(&:downcase)
	end

	def array_counter
		self.array_of_words.each do |check|
			if @key_words.include?(check)
			@counts	<< check
		end
	end
end

	def calculate_fucks
		return @counts.count
	end
end