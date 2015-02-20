class Chisel

	attr_reader :input, :output

	def initialize
		@input
		@output
		@sentences
	end

	def parse(input)
		@input	= input 
		lines  = input.split("\n\n")
		lines_mapped = lines.map do |line|
			line << "THIS IS A NEW LINE"
		end
	end

	def split_lines
		
	end

	def sentences(input)
		input.split("\n\n")
	end
	
end

test_input_together = "This is the first line of the paragraph.\n	This is the second line of the same paragraph"

test_input_separate = "This is the first line of the first paragraph.\n
\nThis is the first line of the second paragraph."

test = Chisel.new
puts test.parse(test_input_together.chomp)
puts test.parse(test_input_separate)
# parser = Chisel.new
# output = parser.parse(document)
# puts output
