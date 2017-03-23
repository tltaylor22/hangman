class Word


	attr_accessor :secret_word, :underscores, :wrong

	def initialize(word)
		@secret_word = word
		@underscores = underscores_function
		# @wrong = 7

	end
	
	def underscores_function
		underscores_function = Array.new(secret_word.length, '_ ')
	end


	def valid_input?
		secret_word[/[a-zA-Z]+/]  == secret_word	
	end

end