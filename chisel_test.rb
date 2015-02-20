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
		chisel = Chisel.new
		chunks = chisel.split_into_chunks("Line one\n\nLine two")
		assert_equal ["Line one", "Line two"], chunks
	end

	def test_two_lines_separated_by_space_are_split_into_two_chunks
		chisel = Chisel.new
		sentences = chisel.split_into_chunks("Line one\nLine one\n\nLine two")
		assert_equal ["Line one\nLine one", "Line two"], sentences
	end

	def test_chunks_without_hashes_are_tagged_as_paragraphs
		chisel = Chisel.new
		chunk = chisel.paragraphs("Paragraph one")
		assert_equal "<p>Paragraph one</p>", chunk 
	end

	def test_a_chunk_starting_with_one_hash_is_surrounded_by_h1
		chisel = Chisel.new
		h1 = chisel.hashes("#Heading one")
		assert_equal "<H1>Heading one</H1>", h1 
	end

	def test_a_chunk_starting_with_two_hashes_is_surrounded_by_h2
		chisel = Chisel.new
		h2 = chisel.hashes("##Heading two")
		assert_equal "<H2>Heading two</H2>", h2 
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
