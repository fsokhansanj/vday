class StringManipulator

	attr_accessor :user_submitted_string, :array_of_words, :fucks_given

	def initialize(string)
		@user_submitted_string = string
		@fucks_given = 0
		text_to_array
		@array_of_answers = Array.new
		@correct_answers = {
			'baltimore' => 'good job! Second question. What is the second question?',
			'valentines' => 'correct again! What is the third question?'
		}
	end

	def text_to_array
		self.array_of_words = user_submitted_string.split(/\s+/).map(&:downcase)
	end

	def array_counter
		self.array_of_words.each do |check|
			if @correct_answers.has_key?(check)
				@answer = @correct_answers[check]
			else
				@answer = "Incorrect. Re-enter your last correct answer or click home to start over."
		end
	end
end

	def show_answer
		return @answer
	end
end