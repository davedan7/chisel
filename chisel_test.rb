require 'minitest'
require 'minitest/autorun'
require './chisel'
require 'minitest/pride'

class ChiselTest < Minitest::Test

	def test_it_can_take_an_input 
		chisel = Chisel.new
		chisel.parse("word")
		assert chisel.file
	end

	def test_it_outputs_a_file
		skip
		parser = Chisel.new
		assert_equal
	end

	def test_text_with_no_blank_lines_is_one_chunk
		skip
	end

end

# - It converts pound signs to headers <h1> <h2>...
#  A chunk of text NOT starting in # gets wra
# - it conversts stars to <em> tags 
#  If the line doesn't start with 
