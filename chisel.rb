class Chisel

	attr_reader :input, :output

	def initialize
		@input
		@output = ""
	end

	def parse(input)
		@input	= input
	end

	def chunk_sorter

	end
	
	def split_into_chunks(string)
		 string.split("\n\n")
	end

	def paragraphs(text)
		text.insert(0, "<p>") 
		text << "</p>"
	end

	def hashes(text)
		if text[0..3] == "####" && text[5] != "#"
			text.gsub("####", "<H4>").insert(-1, "</H4>")
		elsif text[0..2] =="###" && text[3] != "#"
			text.gsub("###", "<H3>").insert(-1, "</H3>")
		elsif text[0..1]=="##" && text[2] != "#"
			text.gsub("##", "<H2>").insert(-1, "</H2>")
		elsif text[0] == "#" && text[1] != "#"
			text.gsub("#", "<H1>").insert(-1, "</H1>")
		end
	end


# 	def hashes(text)
# 		if text[0..3] == "####" && text[5] != "#"
# 			text << "</H4>"
# 			@output << text.gsub("####", "<H4>")
# 		elsif text[0..2] =="###" && text[3] != "#"
# 			text << "</H3>"
# 			@output << text.gsub("###", "<H3>")
# 		elsif text[0..1]=="##" && text[2] != "#"
# 			text << "</H2>"
# 			@output << text.gsub("##", "<H2>")	
# 		elsif text[0] == "#" && text[1] != "#"
# 			text << "</H1>"
# 			@output << text.gsub("#", "<H1>")
# 		end
# 	end

end


