require 'minitest'
require 'minitest/autorun'
require './chisel'
require 'minitest/pride'

class ChiselTest < Minitest::Test

	def test_it_can_take_an_input 
		chisel = Chisel.new
		chisel.parse("word")
		assert chisel.input
	end

	def test_it_changes_input_and_sends_as_output
		chisel = Chisel.new
		chisel.parse("word")
		not_same = true if chisel.input != chisel.output
		assert not_same	
	end
	
	def test_it_splits_input_into_chunks_of_text
		skip
	end

	def test_two_lines_separated_by_space_are_split_into_two_chunks
		skip
	end

	def test_text_with_no_blank_lines_is_one_chunk
		skip
	end

	def test_a_chunk_starting_with_one_hash_is_surrounded_by_h1
		skip
	end

	def test_a_chunk_starting_with_two_hashes_is_surrounded_by_h2
		skip
	end

	def test_one_star_within_lines_are_converted_to_EM_tags
		skip
	end

	def test_two_stars_converts_text_to_strong_tags
		skip
	end

end

# - It converts pound signs to headers <h1> <h2>...
#  A chunk of text NOT starting in # gets wra
# - it conversts stars to <em> tags 
#  If the line doesn't start with 
