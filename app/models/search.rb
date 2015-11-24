class Search
	attr_reader :term
	
	def initialize(term)
		@term = term
	end
	
	def shouts
		@shouts = Shout.text_shouts.where(content_id: text_shouts )
	end
	
	def to_partial_path
		"searches/search"
	end
	
	private
	def text_shouts
		TextShout.where("body like ?", search_term)
	end
	
	def search_term
		"%#{@term}%"
	end
end